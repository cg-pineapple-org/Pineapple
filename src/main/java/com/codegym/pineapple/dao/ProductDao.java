package com.codegym.pineapple.dao;

import com.codegym.pineapple.connection.JdbcConnection;
import com.codegym.pineapple.constant.QueryConstant;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class ProductDao {
    private static final Logger logger = LoggerFactory.getLogger(ProductDao.class);
    private final Integer DEFAULT_CATEGORY_ID = 1;

    private static ProductDao productDao = null;

    private ProductDao(){}

    public static ProductDao getInstance(){
        if (!Optional.ofNullable(productDao).isPresent()){
            productDao = new ProductDao();
        }
        return productDao;
    }

    public Product findProduct(Integer id){
        Product product = new Product();

        try{
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_FIND_PRODUCT);
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
        catch (Exception e){
            logger.error("Some thing went wrong{}", e.getMessage());
        }
        return product;
    }

    public ProductDetail findProductDetail(Integer id){
        ProductDetail productDetail = new ProductDetail();

        try{
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_FIND_PRODUCT_DETAIL);
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
        catch (Exception e){
            logger.error("Some thing went wrong{}", e.getMessage());
        }
        return productDetail;
    }

    public List<List> findProductDetailByProductId(Integer id){
        List<ProductDetail> productDetailList = new ArrayList<>();
        List<Product> productList = new ArrayList<>();

        List<List> tempList = new ArrayList<>();

        ProductDetail productDetail;
        Product product;
        Integer defaultCategoryId = DEFAULT_CATEGORY_ID;

        try{
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_FIND_PRODUCT_DETAIL_BY_PRODUCT_ID);
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
                product.setCategoryId(resultSet.getInt("p.category_id"));

                defaultCategoryId = product.getCategoryId();

                productList.add(product);
            }

            tempList = findProductByCategory(defaultCategoryId, connection);

            connection.close();
        }
        catch (SQLException e){
            logger.error("Database error while finding product detail related to product{}", e.getMessage());
        }
        catch (Exception e){
            logger.error("Some thing went wrong{}", e.getMessage());
        }
        List<List> resultList = new ArrayList<>();
        resultList.add(productDetailList);
        resultList.add(productList);

        List<Product> relatedProductList = tempList.get(0);
        List<Category> categoryList = tempList.get(1);

        resultList.add(relatedProductList);
        resultList.add(categoryList);

        return resultList;
    }

    public List<List> findProductByCategory(Integer id, Connection connection) throws SQLException{
        List<Product> productList = new ArrayList<>();
        List<Category> categoryList = new ArrayList<>();

        Product product;
        Category category;

        PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_FIND_PRODUCT_BY_CATEGORY_ID);
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();

        while (resultSet.next()){
            product = new Product();
            product.setId(resultSet.getInt("p.id"));
            product.setName(resultSet.getString("p.name"));
            product.setCategoryId(resultSet.getInt("p.category_id"));

            productList.add(product);

            category = new Category();
            category.setId(resultSet.getInt("p.category_id"));
            category.setName(resultSet.getString("c.name"));;

            categoryList.add(category);
        }
        List<List> resultList = new ArrayList<>();
        resultList.add(productList);
        resultList.add(categoryList);
        return resultList;
    }

    public List<Map<String, Object>> findAllProduct(Integer pageSize, Integer page){
        List<Map<String, Object>> resultList = new ArrayList();

        Map<String, Object> objectMap;

        Category category;
        Product product;
        ProductDetail productDetail;

        int offset = (pageSize * (page - 1));

        try{
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_FIND_ALL_PRODUCT);
            preparedStatement.setInt(1, pageSize);
            preparedStatement.setInt(2, offset);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                objectMap = new HashMap<>();
                category = new Category();
                product = new Product();
                productDetail = new ProductDetail();

                category.setName(resultSet.getString("c.name"));

                product.setName(resultSet.getString("p.name"));

                productDetail.setId(resultSet.getInt("pd.id"));
                productDetail.setColor(resultSet.getString("pd.color"));
                productDetail.setAmount(resultSet.getInt("pd.amount"));
                productDetail.setPrice(resultSet.getDouble("pd.price"));
                productDetail.setDescription(resultSet.getString("pd.description"));
                productDetail.setProductId(resultSet.getInt("pd.product_id"));

                objectMap.put("category", category);
                objectMap.put("product", product);
                objectMap.put("product_detail", productDetail);

                resultList.add(objectMap);
            }
            connection.close();
        }
        catch (SQLException e){
            logger.error("Database error while finding all products{}", e.getMessage());
        }
        catch (Exception e){
            logger.error("Some thing went wrong{}", e.getMessage());
        }
        return resultList;
    }

    public void updateProduct(Integer id, String color, Integer amount, Double price, String description) {
        Connection connection = JdbcConnection.getConnection();

        try{
            connection.setAutoCommit(false);
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_EDIT_PRODUCT);
            preparedStatement.setString(1, color);
            preparedStatement.setInt(2, amount);
            preparedStatement.setDouble(3, price);
            preparedStatement.setString(4, description);
            preparedStatement.setInt(5, id);
            preparedStatement.executeUpdate();
            connection.commit();
        }
        catch (SQLException e){
            try{
                if (Optional.ofNullable(connection).isPresent()){
                    connection.rollback();
                }
            }
            catch (SQLException ei){
                ei.printStackTrace();
            }
            logger.error("Database error while editing product details{}", e.getMessage());
        }
        catch (Exception e){
            try{
                if (Optional.ofNullable(connection).isPresent()){
                    connection.rollback();
                }
            }
            catch (SQLException ei){
                ei.printStackTrace();
            }
            logger.error("Some thing went wrong{}", e.getMessage());
        }
        finally {
            try{
                if (Optional.ofNullable(connection).isPresent()){
                    connection.close();
                }
            }
            catch (SQLException e){
                logger.error("Closing connecting error{}", e.getMessage());
            }
        }
    }
}
