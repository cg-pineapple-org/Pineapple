package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.AccountDAO;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

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
        if (!Optional.ofNullable(accountDAO).isPresent()) {
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

    public String register(String firstName, String lastName, String country,
                            String dayOfBirth, String email, String phone, String username, String password, String confirmPassword) throws Exception {
        if (firstName == null || firstName.trim().isEmpty() ||
                lastName == null || lastName.trim().isEmpty() ||
                country == null || country.trim().isEmpty() ||
                dayOfBirth == null || dayOfBirth.trim().isEmpty() ||
                email == null || email.trim().isEmpty() ||
                phone == null || phone.trim().isEmpty() ||
                username == null || username.trim().isEmpty() ||
                password == null || password.trim().isEmpty() ||
                confirmPassword == null || confirmPassword.trim().isEmpty()) {

            logger.error("All fields are required!");
            return "All fields are required!";
        }

        if (!password.equals(confirmPassword)) {
            logger.error("Passwords do not match!");
            return "Passwords do not match!";
        }

        if (accountDAO.checkEmailExist(email) || accountDAO.checkUsernameExists(username)) {
            return "Email already exists!";
        }

        String hashedPassword = hashPassword(password);

        accountDAO.createUser(firstName, lastName, country, dayOfBirth, email, phone, username, hashedPassword);

        return "Registration successful!";
    }

    private String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
}
