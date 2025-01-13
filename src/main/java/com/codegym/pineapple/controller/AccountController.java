package com.codegym.pineapple.controller;

import com.codegym.pineapple.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AccountController", urlPatterns = {"/account", "/account/login", "/account/register"})
public class AccountController extends HttpServlet {

    private AccountService accountService;

    @Override
    public void init() {
        accountService = new AccountService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action) {
            case "/account/login":
                req.getRequestDispatcher("/WEB-INF/account/login.jsp").forward(req, resp);
                break;
            case "/account/register":
                req.getRequestDispatcher("/WEB-INF/account/register.jsp").forward(req, resp);
                break;
            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action) {
            case "/account/login":
                handleLogin(req, resp);
                break;
            case "/account/register":
                handleRegister(req, resp);
                break;
            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Action not supported");
        }
    }

    private void handleLogin(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            req.setAttribute("errorMessage", "Username and password cannot be empty");
            req.getRequestDispatcher("/WEB-INF/account/login.jsp").forward(req, resp);
            return;
        }

        boolean success = accountService.login(username.trim(), password.trim());
        if (success) {
            // todo: feature under development
            req.getRequestDispatcher("/WEB-INF/account/register.jsp").forward(req, resp);
        } else {
            req.setAttribute("errorMessage", "Invalid username or password");
            req.getRequestDispatcher("/WEB-INF/account/login.jsp").forward(req, resp);
        }

    }

    private void handleRegister(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            String firstName = req.getParameter("first_name");
            String lastName = req.getParameter("last_name");
            String country = req.getParameter("country");
            String dayOfBirth = req.getParameter("day_of_birth");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String confirmPassword = req.getParameter("confirmPassword");

            if (firstName == null || firstName.trim().isEmpty() ||
                    lastName == null || lastName.trim().isEmpty() ||
                    country == null || country.trim().isEmpty() ||
                    dayOfBirth == null || dayOfBirth.trim().isEmpty() ||
                    email == null || email.trim().isEmpty() ||
                    phone == null || phone.trim().isEmpty() ||
                    username == null || username.trim().isEmpty() ||
                    password == null || password.trim().isEmpty() ||
                    confirmPassword == null || confirmPassword.trim().isEmpty()) {

                req.setAttribute("errorMessage", "All fields are required!");
                req.getRequestDispatcher("/WEB-INF/account/register.jsp").forward(req, resp);
                return;
            }

            if (!password.equals(confirmPassword)) {
                req.setAttribute("errorMessage", "Passwords do not match!");
                req.getRequestDispatcher("/WEB-INF/account/register.jsp").forward(req, resp);
                return;
            }

            boolean isRegistered = accountService.register(
                    firstName.trim(),
                    lastName.trim(),
                    country.trim(),
                    dayOfBirth.trim(),
                    phone.trim(),
                    email.trim(),
                    username.trim(),
                    password.trim()
            );

            if (isRegistered) {
                System.out.println("sucess!");
                req.getRequestDispatcher("/WEB-INF/account/login.jsp").forward(req, resp);
            } else {
                req.setAttribute("errorMessage", "Registration failed. Email or username might already exist.");
                req.getRequestDispatcher("/WEB-INF/account/register.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
