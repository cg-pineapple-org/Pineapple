package com.codegym.pineapple.dao;

import com.codegym.pineapple.connection.JdbcConnection;
import com.codegym.pineapple.model.Category;
import com.codegym.pineapple.model.Product;
import com.codegym.pineapple.model.ProductDetail;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ProductDao {
    private static final Logger logger = LoggerFactory.getLogger(ProductDao.class);
    private final String QUERY_FIND_PRODUCT = "select id, name from products where id = ?;";
    private final String QUERY_FIND_PRODUCT_DETAIL = "select id, color, amount, price, description from product_details where id = ?;";
    private final String QUERY_FIND_PRODUCT_DETAIL_BY_PRODUCT_ID = "select pd.id, pd.color, pd.amount, pd.price, pd.description, pd.product_id, p.name, p.categories_id from product_details pd inner join products p on pd.product_id = p.id where pd.product_id = ?;";
    private final String QUERY_FIND_PRODUCT_BY_CATEGORIES_ID = "select p.id, p.name, p.categories_id, c.name from products p inner join categories c on p.categories_id = c.id where p.categories_id = ?;";

    private static ProductDao productDao = null;

    private ProductDao(){}

    public static ProductDao getInstance(){
        if (productDao == null){
            productDao = new ProductDao();
        }
        return productDao;
    }

    public Product findProduct(Integer id){
        Product product = new Product();

        try{
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QUERY_FIND_PRODUCT);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                product.setId(resultSet.getInt("id"));
                product.setName(resultSet.getString("name"));
            }
            connection.close();
        }
        catch (SQLException e){
            logger.error("Database error while finding product{}", e.getMessage());
        }
        return product;
    }

    public ProductDetail findProductDetail(Integer id){
        ProductDetail productDetail = new ProductDetail();

        try{
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QUERY_FIND_PRODUCT_DETAIL);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                productDetail.setId(resultSet.getInt("id"));
                productDetail.setColor(resultSet.getString("color"));
                productDetail.setAmount(resultSet.getInt("amount"));
                productDetail.setPrice(resultSet.getDouble("price"));
                productDetail.setDescription(resultSet.getString("description"));
            }
            connection.close();
        }
        catch (SQLException e){
            logger.error("Database error while finding product detail{}", e.getMessage());
        }
        return productDetail;
    }

    public List<List> findProductDetailByProductId(Integer id){
        List<ProductDetail> productDetailList = new ArrayList<>();
        List<Product> productList = new ArrayList<>();

        List<List> tempList = new ArrayList<>();

        ProductDetail productDetail;
        Product product;
        Integer categoryId = 1;

        try{
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QUERY_FIND_PRODUCT_DETAIL_BY_PRODUCT_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                productDetail = new ProductDetail();
                product = new Product();

                productDetail.setId(resultSet.getInt("pd.id"));
                productDetail.setColor(resultSet.getString("pd.color"));
                productDetail.setAmount(resultSet.getInt("pd.amount"));
                productDetail.setPrice(resultSet.getDouble("pd.price"));
                productDetail.setDescription(resultSet.getString("pd.description"));

                productDetailList.add(productDetail);

                product.setId(resultSet.getInt("pd.product_id"));
                product.setName(resultSet.getString("p.name"));
                product.setCategoriesId(resultSet.getInt("p.categories_id"));

                categoryId = product.getCategoriesId();

                productList.add(product);
            }


            tempList = findProductByCategory(categoryId, connection);

            connection.close();
        }
        catch (SQLException e){
            logger.error("Database error while finding product detail related to product{}", e.getMessage());
        }
        List<List> list = new ArrayList<>();
        list.add(productDetailList);
        list.add(productList);
        list.add(tempList.get(0));
        list.add(tempList.get(1));

        return list;
    }

    public List<List> findProductByCategory(Integer id, Connection connection) throws SQLException{
        List<Product> productList = new ArrayList<>();
        List<Category> categoryList = new ArrayList<>();

        Product product;
        Category category;

        PreparedStatement preparedStatement = connection.prepareStatement(QUERY_FIND_PRODUCT_BY_CATEGORIES_ID);
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();

        while (resultSet.next()){
            product = new Product();
            product.setId(resultSet.getInt("p.id"));
            product.setName(resultSet.getString("p.name"));
            product.setCategoriesId(resultSet.getInt("p.categories_id"));

            productList.add(product);

            category = new Category();
            category.setId(resultSet.getInt("p.categories_id"));
            category.setName(resultSet.getString("c.name"));;

            categoryList.add(category);
        }
        List<List> list = new ArrayList<>();
        list.add(productList);
        list.add(categoryList);
        return list;
    }
}
