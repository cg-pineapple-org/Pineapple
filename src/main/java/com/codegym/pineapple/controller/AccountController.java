package com.codegym.pineapple.controller;

import com.codegym.pineapple.dao.AccountDAO;
import com.codegym.pineapple.model.User;
import com.codegym.pineapple.service.AccountService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "AccountController", urlPatterns = {"/account", "/login", "/register"})
public class AccountController extends HttpServlet {

    private AccountService accountService;
    private static final Logger logger = LogManager.getLogger(AccountDAO.class);


    @Override
    public void init() {
        accountService = new AccountService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action) {
            case "/login":
                req.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(req, resp);
                break;
            case "/register":
                req.getRequestDispatcher("/WEB-INF/view/account/register.jsp").forward(req, resp);
                break;
            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        switch (action) {
            case "/login":
                String usernameLogin = req.getParameter("username");
                String passwordLogin = req.getParameter("password");
                if (usernameLogin == null || usernameLogin.trim().isEmpty() || passwordLogin == null || passwordLogin.trim().isEmpty()) {
                    req.setAttribute("message", "Username and password cannot be empty");
                    req.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(req, resp);
                    return;
                }
                if (accountService.login(usernameLogin, passwordLogin)) {
                    // todo: feature under development
                    req.getRequestDispatcher("/WEB-INF/view/account/register.jsp").forward(req, resp);
                } else {
                    req.setAttribute("message", "Invalid username or password");
                    req.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(req, resp);
                }

                break;
            case "/register":
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
                    if (Objects.equals(accountService.register(firstName, lastName, country, dayOfBirth, email, phone, username, password, confirmPassword), "Registration successful!")) {
                        req.setAttribute("message", accountService.register(firstName, lastName, country, dayOfBirth, email, phone, username, password, confirmPassword));
                        req.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(req, resp);
                    } else {
                        req.setAttribute("message", "Registration failed!");
                        req.getRequestDispatcher("/WEB-INF/view/account/register.jsp").forward(req, resp);
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
