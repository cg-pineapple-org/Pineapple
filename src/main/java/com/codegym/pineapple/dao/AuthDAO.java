package com.codegym.pineapple.dao;

import com.codegym.pineapple.connection.JdbcConnection;
import com.codegym.pineapple.constant.QueryConstant;
import com.codegym.pineapple.model.Account;
import com.codegym.pineapple.model.Cart;
import com.codegym.pineapple.model.User;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class AuthDAO {

    private static final Logger logger = LogManager.getLogger(AuthDAO.class);

    public Account getAccountByUsername(String username) {
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(QueryConstant.GET_ACCOUNT_BY_USERNAME_QUERY)) {
            statement.setString(1, username);

            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Account account = new Account();
                account.setUserId(resultSet.getInt("user_id"));
                account.setUsername(resultSet.getString("username"));
                account.setPassword(resultSet.getString("password"));
                return account;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public User getUserById(int userId) {
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(QueryConstant.GET_USER_BY_ID_QUERY)) {
            statement.setInt(1, userId);

            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setFirstName(resultSet.getString("first_name"));
                user.setLastName(resultSet.getString("last_name"));
                user.setCountry(resultSet.getString("country"));
                user.setDateOfBirth(resultSet.getString("day_of_birth"));
                user.setEmail(resultSet.getString("email"));
                user.setPhone(resultSet.getString("phone"));
                user.setRoleId(resultSet.getInt("role_id"));
                user.setCartId(resultSet.getInt("cart_id"));
                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
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
            Integer userId = getUserIdByEmail(email);
            createCart(userId);
            updateCartId(getCartId(userId), userId);
            return true;
        } catch (SQLException e) {
            logger.error("Error creating user: " + e.getMessage());
        }
        return false;
    }

    public void saveResetToken(String username, String token) {
        try (Connection connection = JdbcConnection.getConnection()) {
            PreparedStatement statement = connection.prepareStatement(QueryConstant.QUERY_RESET_TOKEN);
            statement.setString(1, token);
            statement.setTimestamp(2, new Timestamp(System.currentTimeMillis() + QueryConstant.TIME_EXPIRY_TOKEN));
            statement.setString(3, username);
            statement.executeUpdate();
        } catch (SQLException e) {
            logger.error("Error saving reset token: " + e.getMessage());
        }
    }

    public void deleteOldTokens(String username) {
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(QueryConstant.QUERY_DELETE_OLD_TOKEN)) {

            statement.setString(1, username);
            statement.executeUpdate();

        } catch (SQLException e) {
            logger.error("Error deleting old tokens for username: " + username, e);
        }
    }


    public void updatePassword(String username, String hashedPassword) {
        try (Connection connection = JdbcConnection.getConnection()) {
            PreparedStatement statement = connection.prepareStatement(QueryConstant.QUERY_UPDATE_PASSWORD);
            statement.setString(1, hashedPassword);
            statement.setString(2, username);
            statement.executeUpdate();
        } catch (SQLException e) {
            logger.error("Error updating password: " + e.getMessage());
        }
    }

    public boolean isUsernameEmailMatch(String username, String email) {
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(QueryConstant.QUERY_GET_GMAIL_AND_USERNAME)) {

            statement.setString(1, username);
            statement.setString(2, email);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    return true;
                } else {
                    return false;
                }
            }
        } catch (SQLException e) {
            logger.error("Error checking username and email match: " + e.getMessage());
        }
        return false;
    }

    public boolean updateUser(User user, String username) {
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_UPDATE_FROFILE)) {

            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getLastName());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setString(4, user.getDateOfBirth());
            preparedStatement.setString(5, user.getEmail());
            preparedStatement.setString(6, user.getPhone());
            preparedStatement.setString(7, username);

            int rowsUpdated = preparedStatement.executeUpdate();
            if (rowsUpdated > 0) {
                logger.info("User with username: " + username + " updated successfully");
                return true;
            } else {
                logger.error("Failed to update user with username: " + username);
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Integer updateCartId(Integer cartId, Integer userId) {
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_UPDATE_CART_ID)) {
            preparedStatement.setInt(1, cartId);
            preparedStatement.setInt(2, userId);
            preparedStatement.executeUpdate();
            Cart cart = new Cart(userId);
            cart.setId(cartId);
            return cart.getId();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void createCart(Integer userId) {
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_INSERT_CART)) {
            preparedStatement.setInt(1, userId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Integer getUserIdByEmail(String email) {
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(QueryConstant.QUERY_GET_USER_ID_BY_EMAIL)) {
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("user_id");
            }
        } catch (SQLException e) {
            logger.error("Error getting user ID by email: " + e.getMessage());
        }
        return null;
    }

    public Integer getCartId(Integer userId) {
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(QueryConstant.QUERY_GET_CART_ID_BY_USER_ID)) {
            statement.setInt(1, userId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("cart_id");
            }
        } catch (SQLException e) {
            logger.error("Error getting cart ID by user ID: " + e.getMessage());
        }
        return null;
    }
}
