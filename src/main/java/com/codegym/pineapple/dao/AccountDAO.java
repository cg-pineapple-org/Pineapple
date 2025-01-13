package com.codegym.pineapple.dao;

import com.codegym.pineapple.connection.JdbcConnection;
import com.codegym.pineapple.constant.QueryConstant;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO {

    private static final Logger logger = LogManager.getLogger(AccountDAO.class);


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
            return resultSet.next();
        } catch (SQLException e) {
            logger.error("Error checking username: " + e.getMessage());
        }
        return false;
    }

    public boolean createUser(String firstName, String lastName, String country,
                              String dayOfBirth, String phone, String email, String username, String hashedPassword) {
        try (Connection connection = JdbcConnection.getConnection()) {
            connection.setAutoCommit(false);

            try (PreparedStatement userStatement = connection.prepareStatement(QueryConstant.QUERY_ADD_USER)) {
                userStatement.setString(1, firstName);
                userStatement.setString(2, lastName);
                userStatement.setString(3, country);
                userStatement.setString(4, dayOfBirth);
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
            e.printStackTrace();
        }
        return false;
    }
}
