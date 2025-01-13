package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.AccountDAO;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AccountService {
    private final AccountDAO accountDAO;
    private static final Logger logger = LogManager.getLogger(AccountDAO.class);

    public AccountService() {
        this.accountDAO = new AccountDAO();
    }

    public boolean login(String username, String password) {

        if (!accountDAO.checkUsernameExists(username)) {
            logger.error("Username does not exist.");
            return false;
        }

        String storedPassword = accountDAO.getPasswordByUsername(username);
        if (storedPassword == null) {
            logger.error("No password found for the user.");
            return false;
        }

        if (storedPassword.equals(password)) {
            logger.info("Login successful.");
            return true;
        }else if (BCrypt.checkpw(password, storedPassword)) {
            logger.info("Login successful.");
            return true;
        } else {
            logger.error("Invalid password.");
            return false;
        }
    }

    public boolean register(String firstName, String lastName, String country,
                            String dayOfBirth, String email, String phone, String username, String password) throws Exception {

        if (accountDAO.checkEmailExist(email) || accountDAO.checkUsernameExists(username)) {
            return false;
        }

        String hashedPassword = hashPassword(password);

        return accountDAO.createUser(firstName, lastName, country, dayOfBirth, email, phone, username, hashedPassword);
    }

    private String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public void handleLogin(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            req.setAttribute("errorMessage", "Username and password cannot be empty");
            req.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(req, resp);
            return;
        }

        boolean success = login(username.trim(), password.trim());
        if (success) {
            // todo: feature under development
            req.getRequestDispatcher("/WEB-INF/view/account/register.jsp").forward(req, resp);
        } else {
            req.setAttribute("errorMessage", "Invalid username or password");
            req.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(req, resp);
        }

    }

    public void handleRegister(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
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
                req.getRequestDispatcher("/WEB-INF/view/account/register.jsp").forward(req, resp);
                return;
            }

            if (!password.equals(confirmPassword)) {
                req.setAttribute("errorMessage", "Passwords do not match!");
                req.getRequestDispatcher("/WEB-INF/view/account/register.jsp").forward(req, resp);
                return;
            }

            boolean isRegistered = register(
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
                req.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(req, resp);
            } else {
                req.setAttribute("errorMessage", "Registration failed. Email or username might already exist.");
                req.getRequestDispatcher("/WEB-INF/view/account/register.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
