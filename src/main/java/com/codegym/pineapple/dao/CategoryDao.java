package com.codegym.pineapple.dao;

import com.codegym.pineapple.constant.QueryConstant;
import com.codegym.pineapple.connection.JdbcConnection;
import com.codegym.pineapple.model.Category;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryDao {
    private static final Logger logger = LoggerFactory.getLogger(CategoryDao.class);

    public Category getNameCategoryById(int id) {
        Category category = null;
        try (Connection connection = JdbcConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_FIND_CATEGORY_BY_ID)) {

            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                category = new Category();
                category.setId(resultSet.getInt("id"));
                category.setName(resultSet.getString("name"));
            }
        } catch (SQLException e) {
            logger.error("Error fetching category by ID: {}", e.getMessage());
        }
        return category;
    }

}
