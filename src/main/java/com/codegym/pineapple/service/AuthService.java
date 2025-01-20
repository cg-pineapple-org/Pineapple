package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.AuthDAO;
import com.codegym.pineapple.model.Account;
import com.codegym.pineapple.model.User;
import com.codegym.pineapple.utility.EmailMessage;
import com.codegym.pineapple.utility.HashPasswordUtility;
import com.codegym.pineapple.utility.ValidateUtility;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

public class AuthService {
    private final AuthDAO authDAO;
    private HttpSession session;
    private static final Logger logger = LogManager.getLogger(AuthDAO.class);
    private ValidateUtility validateUtility = ValidateUtility.getInstance();

    public AuthService() {
        this.authDAO = new AuthDAO();
    }

    public Map<String, Object> login(String username, String password) {

        Account account = authDAO.getAccountByUsername(username);

        if (Optional.ofNullable(account).isPresent() && BCrypt.checkpw(password, account.getPassword())) {
            User user = authDAO.getUserById(account.getUserId());
            Map< String, Object> map = new HashMap<>();
            map.put("user", user);
            map.put("account", account);
            return map;
        } else {
            logger.error("Invalid username or password!");
            return null;
        }
    }

    public boolean register(String firstName, String lastName, String country,
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
            return false;
        }

        if (!password.equals(confirmPassword)) {
            logger.error("Passwords do not match!");
            return false;
        }

        if (authDAO.checkEmailExist(email) || authDAO.checkUsernameExists(username)) {
            logger.error("Email or username already exists!");
            return false;
        }

        if (!validateUtility.checkEmail(email)) {
            logger.error("Invalid email!");
            return false;
        }

        if (!validateUtility.checkPhone(phone)) {
            logger.error("Invalid phone number!");
            return false;
        }

        if (!validateUtility.checkDayOfBirth(dayOfBirth)) {
            logger.error("Invalid date of birth!");
            return false;
        }

        if (!validateUtility.checkPassword(password)) {
            logger.error("Invalid password!");
            return false;
        }

        if (!validateUtility.checkUsername(username)) {
            logger.error("Invalid username!");
            return false;
        }

        String hashedPassword = HashPasswordUtility.hashPassword(password);

        authDAO.createUser(firstName, lastName, country, dayOfBirth, email, phone, username, hashedPassword);

        return true;
    }

    public String generateResetToken(String username) {
        String token = UUID.randomUUID().toString();
        authDAO.deleteOldTokens(username);
        authDAO.saveResetToken(username, token);
        return token;
    }

    public boolean isValidUser(String username, String email) {
        return authDAO.isUsernameEmailMatch(username, email);
    }

    public boolean updatePassword(String username, String newPassword) {
        String hashedPassword = HashPasswordUtility.hashPassword(newPassword);
        authDAO.updatePassword(username, hashedPassword);
        return true;
    }

    @NotNull
    public static EmailMessage getEmailMessage(HttpServletRequest request, AuthService authService, String username, String email) {
        String resetToken = authService.generateResetToken(username);
        String resetLink = request.getRequestURL().toString().replace("/auth/forgot-password", "/auth/reset-password?token=" + resetToken);

        EmailMessage emailMessage = new EmailMessage();
        emailMessage.setTo(email);
        emailMessage.setMessage("Hi " + username + ",\n\nClick the link below to reset your password:\n" + resetLink);
        emailMessage.setSubject("Password Reset Request");
        return emailMessage;
    }

    public User getCurrentUser() {
        User user = (User) session.getAttribute("user");

        if (user == null) {
            throw new RuntimeException("User not logged in.");
        }
        return user;
    }

    public boolean updateProfile(String username, String firstName, String lastName, String country, String dayOfBirth, String email, String phone) {
        if (!Optional.ofNullable(username).isPresent() || email.isEmpty()) {
            logger.error("Username is required!");
            return false;
        }
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setCountry(country);
        user.setDateOfBirth(dayOfBirth);
        user.setEmail(email);
        user.setPhone(phone);

        return authDAO.updateUser(user, username);
    }
}
