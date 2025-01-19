package com.codegym.pineapple.dao;

import com.codegym.pineapple.connection.JdbcConnection;
import com.codegym.pineapple.constant.QueryConstant;
import com.codegym.pineapple.model.Cart;
import com.codegym.pineapple.model.CartItem;
import com.codegym.pineapple.model.Product;
import com.codegym.pineapple.model.ProductDetail;
import com.codegym.pineapple.model.Transaction;
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

public class TransactionDao {
    private static final Logger logger = LoggerFactory.getLogger(ProductDao.class);
    private static TransactionDao transactionDao = null;

    private TransactionDao(){}

    public static TransactionDao getInstance(){
        if (!Optional.ofNullable(transactionDao).isPresent()){
            transactionDao = new TransactionDao();
        }
        return transactionDao;
    }

    public  List<Map<String, Object>> findTransactionByUserId(Integer pageSize, Integer page, Integer userId){
        int offset = (pageSize * (page - 1));

        List<Map<String, Object>> resultList = new ArrayList<>();
        List<Map<String, Object>> subResultList;
        Map<String, Object> combinedTransactionMap;
        Map<String, Object> subCombinedTransactionMap;
        Transaction transaction;
        Cart cart;
        CartItem cartItem;
        ProductDetail productDetail;
        Product product;
        PreparedStatement preparedStatement;
        Double cartPrice;

        try{
            Connection connection = JdbcConnection.getConnection();
            preparedStatement = connection.prepareStatement(QueryConstant.QUERY_FIND_TRANSACTION_BY_USER_ID);
            preparedStatement.setInt(1, userId);
            preparedStatement.setInt(2, pageSize);
            preparedStatement.setInt(3, offset);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                combinedTransactionMap = new HashMap<>();
                transaction = new Transaction();
                cart = new Cart();
                subResultList = new ArrayList<>();
                cartPrice = 0d;

                transaction.setId(resultSet.getInt("t.id"));
                transaction.setCartId(resultSet.getInt("t.cart_id"));
                transaction.setCheckoutDate(resultSet.getDate("t.checkout_date").toLocalDate());

                cart.setId(resultSet.getInt("t.cart_id"));
                cart.setUserId(resultSet.getInt("c.user_id"));

                preparedStatement = connection.prepareStatement(QueryConstant.QUERY_FIND_CART_ITEM_BY_CART_ID);
                preparedStatement.setInt(1, cart.getId());
                ResultSet subResultSet = preparedStatement.executeQuery();

                while (subResultSet.next()){
                    subCombinedTransactionMap = new HashMap<>();
                    cartItem = new CartItem();
                    productDetail = new ProductDetail();
                    product = new Product();

                    cartItem.setId(subResultSet.getInt("ci.id"));
                    cartItem.setProductDetailId(subResultSet.getInt("ci.product_detail_id"));
                    cartItem.setQuantity(subResultSet.getInt("ci.quantity"));

                    productDetail.setId(subResultSet.getInt("ci.product_detail_id"));
                    productDetail.setColor(subResultSet.getString("pd.color"));
                    productDetail.setPrice(subResultSet.getDouble("pd.price"));

                    product.setName(subResultSet.getString("p.name"));

                    subCombinedTransactionMap.put("cartItem", cartItem);
                    subCombinedTransactionMap.put("productDetail", productDetail);
                    subCombinedTransactionMap.put("product", product);
                    subResultList.add(subCombinedTransactionMap);

                    Double cartItemPrice = cartItem.getQuantity() * productDetail.getPrice();
                    cartPrice += cartItemPrice;
                }

                combinedTransactionMap.put("transaction", transaction);
                combinedTransactionMap.put("cart", cart);
                combinedTransactionMap.put("cartItemDetail", subResultList);
                combinedTransactionMap.put("cartPrice", cartPrice);
                resultList.add(combinedTransactionMap);
            }
            connection.close();
        }
        catch (SQLException e){
            logger.error("Error while finding transaction by user id{}", e.getMessage());
        }
        catch (Exception e){
            logger.error("Something went wrong");
        }
        return resultList;
    }
}
