package com.codegym.pineapple.dao;

import com.codegym.pineapple.connection.JdbcConnection;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO {

    private static final Logger logger = LogManager.getLogger(AccountDAO.class);

    public String getPasswordByUsername(String username) {
        String query = "SELECT password FROM accounts WHERE username = ?";
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getString("password");
            }
        } catch (SQLException e) {
            System.out.println("Error retrieving password: " + e.getMessage());
        }
        return null;
    }

    public boolean checkUsernameExists(String username) {
        String query = "SELECT username FROM accounts WHERE username = ?";
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();
            return resultSet.next();
        } catch (SQLException e) {
            System.out.println("Error checking username: " + e.getMessage());
        }
        return false;
    }

    public boolean checkEmailExist(String email) {
        String query = "SELECT email FROM users WHERE email = ?";
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            return resultSet.next();
        } catch (SQLException e) {
            System.out.println("Error checking username: " + e.getMessage());
        }
        return false;
    }

    public boolean createUser(String firstName, String lastName, String country,
                              String dayOfBirth, String phone, String email, String username, String hashedPassword) {

        String queryUser = "INSERT INTO users (first_name, last_name, country, day_of_birth, email, phone, role_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
        String queryAccount = "INSERT INTO accounts (user_id, username, password) VALUES (LAST_INSERT_ID(), ?, ?)";

        try (Connection connection = JdbcConnection.getConnection()) {
            connection.setAutoCommit(false);

            try (PreparedStatement userStatement = connection.prepareStatement(queryUser)) {
                userStatement.setString(1, firstName);
                userStatement.setString(2, lastName);
                userStatement.setString(3, country);
                userStatement.setString(4, dayOfBirth);
                userStatement.setString(5, email);
                userStatement.setString(6, phone);
                userStatement.setInt(7, 2);
                userStatement.executeUpdate();
            }

            try (PreparedStatement accountStatement = connection.prepareStatement(queryAccount)) {
                accountStatement.setString(1, username);
                accountStatement.setString(2, hashedPassword);
                accountStatement.executeUpdate();
            }

            connection.commit();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
