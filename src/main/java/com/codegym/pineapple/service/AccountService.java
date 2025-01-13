package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.AccountDAO;
import org.mindrot.jbcrypt.BCrypt;

public class AccountService {
    private final AccountDAO accountDAO;

    public AccountService() {
        this.accountDAO = new AccountDAO();
    }

    public boolean login(String username, String password) {

        if (!accountDAO.checkUsernameExists(username)) {
            System.out.println("Username does not exist.");
            return false;
        }

        String storedPassword = accountDAO.getPasswordByUsername(username);
        if (storedPassword == null) {
            System.out.println("No password found for the user.");
            return false;
        }

        if (storedPassword.equals(password)) {
            System.out.println("Login successful.");
            return true;
        }else if (BCrypt.checkpw(password, storedPassword)) {
            System.out.println("Login successful.");
            return true;
        } else {
            System.out.println("Invalid password.");
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

}
