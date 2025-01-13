package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.AuthDAO;
import com.codegym.pineapple.utility.ValidateUtility;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mindrot.jbcrypt.BCrypt;

import java.util.Optional;

public class AuthService {
    private final AuthDAO authDAO;
    private static final Logger logger = LogManager.getLogger(AuthDAO.class);
    private ValidateUtility validateUtility = new ValidateUtility();

    public AuthService() {
        this.authDAO = new AuthDAO();
    }

    public boolean login(String username, String password) {
        if (!authDAO.checkUsernameExists(username)) {
            logger.error("Username does not exist.");
            return false;
        }

        String storedPassword = authDAO.getPasswordByUsername(username);
        if (!Optional.ofNullable(authDAO).isPresent()) {
            logger.error("No password found for the user.");
            return false;
        }

        if (username == null || username.isEmpty() || password == null || password.trim().isEmpty()) {
            logger.error("Username and password cannot be empty");
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

        if (authDAO.checkEmailExist(email) || authDAO.checkUsernameExists(username)) {
            return "Email already exists!";
        }

        if (validateUtility.checkEmail(email)) {
            return "Invalid email!";
        }

        if (validateUtility.checkUsername(username)) {
            return "Invalid username!";
        }

        if (validateUtility.checkPhone(phone)) {
            return "Invalid phone number!";
        }

        if (validateUtility.checkDayOfBirth(dayOfBirth)) {
            return "Invalid day of birth!";
        }

        if (!validateUtility.checkPassword(password)) {
            return "Invalid password!";
        }

        if (!validateUtility.checkUsername(username)) {
            return "Invalid username!";
        }

        String hashedPassword = hashPassword(password);

        authDAO.createUser(firstName, lastName, country, dayOfBirth, email, phone, username, hashedPassword);

        return "Registration successful!";
    }

    private String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
}
