package com.codegym.pineapple.controller;

import com.codegym.pineapple.dao.AuthDAO;
import com.codegym.pineapple.model.Account;
import com.codegym.pineapple.model.User;
import com.codegym.pineapple.service.AuthService;
import com.codegym.pineapple.utility.EmailMessage;
import com.codegym.pineapple.utility.EmailUtility;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

import static com.codegym.pineapple.service.AuthService.getEmailMessage;

@WebServlet(name = "AuthController", urlPatterns = {"/auth", "/auth/login", "/auth/register", "/auth/logout", "/auth/forgot-password", "/auth/reset-password"})
public class AuthController extends HttpServlet {

    private String firstName = null;
    private String lastName = null;
    private String country = null;
    private String dayOfBirth = null;
    private String email = null;
    private String phone = null;
    private String username = null;
    private String password = null;
    private String confirmPassword = null;

    private AuthService authService;
    private static final Logger logger = LogManager.getLogger(AuthDAO.class);


    @Override
    public void init() {
        authService = new AuthService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action) {
            case "/auth":
                req.getRequestDispatcher("/WEB-INF/view/auth/user.jsp").forward(req, resp);
                break;
            case "/auth/login":
                req.getRequestDispatcher("/WEB-INF/view/auth/login.jsp").forward(req, resp);
                break;
            case "/auth/register":
                req.getRequestDispatcher("/WEB-INF/view/auth/register.jsp").forward(req, resp);
                break;
            case "/auth/logout":
                HttpSession session = req.getSession(false);
                if (session != null) {
                    session.invalidate();
                }
                resp.sendRedirect("/auth/login");
                break;
            case "/auth/forgot-password":
                req.getRequestDispatcher("/WEB-INF/view/auth/forgotPassword.jsp").forward(req, resp);
                break;
            case "/auth/reset-password":
                req.getRequestDispatcher("/WEB-INF/view/auth/resetPassword.jsp").forward(req, resp);
                break;
            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action) {
            case "/auth/login":
                String username = req.getParameter("username");
                String password = req.getParameter("password");

                User user = authService.login(username, password);

                if (user != null) {
                    HttpSession session = req.getSession();
                    session.setAttribute("userId", user.getId());
                    session.setAttribute("userRole", user.getRoleId());
                    session.setAttribute("cartId", user.getCartId());
                    resp.sendRedirect("/");
                } else {
                    req.setAttribute("errorMessage", "Invalid username or password");
                    req.getRequestDispatcher("/WEB-INF/view/auth/login.jsp").forward(req, resp);
                }
                break;
            case "/auth/register":
                firstName = req.getParameter("first_name");
                lastName = req.getParameter("last_name");
                country = req.getParameter("country");
                dayOfBirth = req.getParameter("day_of_birth");
                email = req.getParameter("email");
                phone = req.getParameter("phone");
                username = req.getParameter("username");
                password = req.getParameter("password");
                confirmPassword = req.getParameter("confirmPassword");

                try {
                    if (authService.register(firstName, lastName, country, dayOfBirth, email, phone, username, password, confirmPassword)) {
                        req.setAttribute("errorMessage", "Registration successful!");
                        logger.info("Registration successful");
                        resp.sendRedirect("/auth/login");
                        break;
                    }
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            case "/auth/forgot-password":
                email = req.getParameter("email").trim();
                username = req.getParameter("username").trim();

                if (email == null || email.isEmpty() || username.isEmpty()) {
                    req.setAttribute("errorMessage", "Username or email cannot be null.");
                    req.getRequestDispatcher("/WEB-INF/view/auth/forgotPassword.jsp").forward(req, resp);
                    return;
                }

                if (!authService.isValidUser(username, email)) {
                    req.setAttribute("errorMessage", "Invalid username or email.");
                    req.getRequestDispatcher("/WEB-INF/view/auth/forgotPassword.jsp").forward(req, resp);
                    return;
                }

                HttpSession session = req.getSession();
                session.setAttribute("resetUsername", username);

                EmailMessage emailMessage = getEmailMessage(req, authService, username, email);

                try {
                    EmailUtility.sendMail(emailMessage);
                    req.setAttribute("successMessage", "Password reset link sent to your email.");
                } catch (Exception e) {
                    e.printStackTrace();
                    req.setAttribute("errorMessage", "Error while sending email. Please try again later.");
                }

                req.getRequestDispatcher("/WEB-INF/view/auth/forgotPassword.jsp").forward(req, resp);
                break;

            case "/auth/reset-password":
                session = req.getSession(false);
                if (session == null || session.getAttribute("resetUsername") == null) {
                    req.setAttribute("errorMessage", "Session expired or invalid access.");
                    req.getRequestDispatcher("/WEB-INF/view/auth/forgotPassword.jsp").forward(req, resp);
                    return;
                }

                String resetUsername = (String) session.getAttribute("resetUsername");
                String newPassword = req.getParameter("newPassword");
                String confirmPassword = req.getParameter("confirmPassword");

                if (!newPassword.equals(confirmPassword)) {
                    req.setAttribute("errorMessage", "Passwords do not match.");
                    req.getRequestDispatcher("/WEB-INF/view/auth/resetPassword.jsp").forward(req, resp);
                    return;
                }

                authService = new AuthService();
                if (authService.updatePassword(resetUsername, newPassword)) {
                    req.setAttribute("successMessage", "Password reset successfully!");
                    session.removeAttribute("resetUsername");
                    resp.sendRedirect("/auth/login");
                } else {
                    req.setAttribute("errorMessage", "Failed to reset password. Please try again.");
                    req.getRequestDispatcher("/WEB-INF/view/auth/resetPassword.jsp").forward(req, resp);
                }
                break;
        }
    }
}
