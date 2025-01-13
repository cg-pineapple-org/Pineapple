package com.codegym.pineapple.controller;

import com.codegym.pineapple.dao.AuthDAO;
import com.codegym.pineapple.service.AuthService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "AuthController", urlPatterns = {"/auth", "/auth/login", "/auth/register"})
public class AuthController extends HttpServlet {

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
            case "/auth/login":
                req.getRequestDispatcher("/WEB-INF/view/auth/login.jsp").forward(req, resp);
                break;
            case "/auth/register":
                req.getRequestDispatcher("/WEB-INF/view/auth/register.jsp").forward(req, resp);
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
                String usernameLogin = req.getParameter("username");
                String passwordLogin = req.getParameter("password");

                if (authService.login(usernameLogin, passwordLogin)) {
                    // todo: feature under development
                    req.getRequestDispatcher("/WEB-INF/view/auth/register.jsp").forward(req, resp);
                } else {
                    req.setAttribute("message", "Invalid username or password");
                    req.getRequestDispatcher("/WEB-INF/view/auth/login.jsp").forward(req, resp);
                }

                break;
            case "/auth/register":
                String firstName = req.getParameter("first_name");
                String lastName = req.getParameter("last_name");
                String country = req.getParameter("country");
                String dayOfBirth = req.getParameter("day_of_birth");
                String email = req.getParameter("email");
                String phone = req.getParameter("phone");
                String username = req.getParameter("username");
                String password = req.getParameter("password");
                String confirmPassword = req.getParameter("confirmPassword");
                try {
                    if (Objects.equals(authService.register(firstName, lastName, country, dayOfBirth, email, phone, username, password, confirmPassword), "Registration successful!")) {
                        req.setAttribute("message", "Registration successful!");
                        resp.sendRedirect("/auth/login");
                    } else {
                        req.setAttribute("message", "Registration failed!");
                        req.getRequestDispatcher("/WEB-INF/view/auth/register.jsp").forward(req, resp);
                    }
                } catch (Exception e) {
                    logger.error("Error registering user: " + e.getMessage());
                }
                break;
            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Action not supported");
        }
    }
}
