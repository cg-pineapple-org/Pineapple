package com.codegym.pineapple.dao;

import com.codegym.pineapple.connection.JdbcConnection;
import com.codegym.pineapple.constant.QueryConstant;
import com.codegym.pineapple.model.Account;
import com.codegym.pineapple.model.User;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AuthDAO {

    private static final Logger logger = LogManager.getLogger(AuthDAO.class);


    public String getPasswordByUsername(String username) {
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(QueryConstant.QUERY_GET_PASSWORD_BY_USERNAME);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getString("password");
            }
        } catch (SQLException e) {
            logger.error("Error retrieving password: " + e.getMessage());
        }
        return null;
    }

    public boolean checkUsernameExists(String username) {
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(QueryConstant.QUERY_GET_USERNAME_BY_USERNAME);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();
            return resultSet.next();
        } catch (SQLException e) {
            logger.error("Error checking username: " + e.getMessage());
        }
        return false;
    }

    public boolean checkEmailExist(String email) {
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(QueryConstant.QUERY_GET_EMAIL_BY_EMAIL);
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return true;
            }
        } catch (SQLException e) {
            logger.error("Error checking username: " + e.getMessage());
        }
        return false;
    }

    public boolean createUser(String first_name, String last_name, String country,
                              String day_of_birth, String email, String phone, String username, String hashedPassword) {
        try (Connection connection = JdbcConnection.getConnection()) {
            connection.setAutoCommit(false);

            try (PreparedStatement userStatement = connection.prepareStatement(QueryConstant.QUERY_ADD_USER)) {
                userStatement.setString(1, first_name);
                userStatement.setString(2, last_name);
                userStatement.setString(3, country);
                userStatement.setString(4, day_of_birth);
                userStatement.setString(5, email);
                userStatement.setString(6, phone);
                userStatement.setInt(7, 2);
                userStatement.executeUpdate();
            }

            try (PreparedStatement accountStatement = connection.prepareStatement(QueryConstant.QUERY_ADD_ACCOUNT)) {
                accountStatement.setString(1, username);
                accountStatement.setString(2, hashedPassword);
                accountStatement.executeUpdate();
            }

            connection.commit();
            return true;
        } catch (SQLException e) {
            logger.error("Error creating user: " + e.getMessage());
        }
        return false;
    }

    public Account findUserByUsername(String username) {
        String query = "SELECT password FROM accounts WHERE username = ?";
        Account account = null;
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                account = new Account();
                account.setPassword(resultSet.getString("password"));
            }
        } catch (SQLException e) {
            logger.error("Error retrieving email: " + e.getMessage());
        }
        return account;
    }
}
