package com.codegym.pineapple.dao;

import com.codegym.pineapple.connection.JdbcConnection;
import com.codegym.pineapple.model.Cart;
import com.codegym.pineapple.model.CartItem;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CartDao {
    private static final Logger log = LoggerFactory.getLogger(CartDao.class);

    public Cart getCart(Integer userId) {
        Cart cart = new Cart();
        CartItem cartItem = new CartItem();
//        ProductDetail productDetail = new ProductDetail();
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT " +
                                "pd.product_name, pd.color, ci.quantity, pd.price, " +
                            "FROM carts c" +
                            "JOIN users u ON u.cart_id = c.id" +
                            "JOIN cart_items ci ON ci.cart_id = c.id" +
                            "JOIN product_details pd ON ci.product_detail_id = pd.id" +
                            "WHERE c.user_id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, userId);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                cartItem.setQuantity(resultSet.getInt("quantity"));
//                productDetail.setProductName(resultSet.getString("product_name");
//                productDetail.setColor(resultSet.getString("color");
//                productDetail.setPrice(resultSet.getString("price");
                cart.setTotalPrice(resultSet.getInt("quantity") * resultSet.getDouble("price"));
                cart.add(cartItem);
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cart;
    }

//    public boolean addToCart(Cart cart, Pro) {
//        try {
//            for (CartItem item : cart.getCartItems()) {
//                if (item.getProductDetailId() == productDetails.getProductId()) {
//                    existingItem = item;
//                break; } }
//
//            Connection connection = JdbcConnection.getConnection();
//            String query = "INSERT INTO cart_items (cart_id, product_detail_id, quantity) " +
//                            "VALUES (?, ?, ?);";
//            PreparedStatement preparedStatement = connection.prepareStatement(query);
//            preparedStatement.setInt(1, cartItem.getCartId());
//            preparedStatement.setInt(2, cartItem.getProductDetailId());
//            preparedStatement.setInt(3, cartItem.getQuantity());
//
//            if (preparedStatement.executeUpdate() > 0) {
//                System.out.println("Added successfully.");
//                return true;
//            } else {
//                System.out.println("Failed to insert.");
//                return false;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return false;
//    }

    public boolean deleteCartItem(Integer cartItemId) {
        Cart cart = new Cart();
        CartItem cartItem = new CartItem();
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "DELETE FROM cart_items WHERE id = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, cartItemId);

            if (preparedStatement.executeUpdate() > 0) {
                log.info("Delete cart item successful");
                return true;
            } else {
                log.info("Delete cart item failed");
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

}
