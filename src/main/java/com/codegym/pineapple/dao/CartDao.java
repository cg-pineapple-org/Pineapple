package com.codegym.pineapple.dao;

import com.codegym.pineapple.connection.JdbcConnection;
import com.codegym.pineapple.constant.QueryConstant;
import com.codegym.pineapple.model.Cart;
import com.codegym.pineapple.model.CartItem;
import com.codegym.pineapple.model.ProductDetail;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CartDao {
    private static final Logger log = LoggerFactory.getLogger(CartDao.class);

    public Cart getCart(Integer userId) {
        Cart cart = new Cart();
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_LIST_CART_ITEMS);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                CartItem cartItem = new CartItem();
                ProductDetail productDetail = new ProductDetail();

                productDetail.setColor(resultSet.getString("color"));
                productDetail.setPrice(resultSet.getDouble("price"));
                cartItem.setQuantity(resultSet.getInt("quantity"));
                cartItem.setProductDetail(productDetail);
                cartItem.setProductName(resultSet.getString("name"));
                cartItem.setSubTotal(resultSet.getDouble("sub_total"));
                Double subTotal = cartItem.getSubTotal();
                cart.setTotalPrice(cart.getTotalPrice() + subTotal);
                cart.add(cartItem);
            }
            connection.close();
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return cart;
    }

    public Double getCartTotalPrice(Integer userId, Cart cart) {
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_CALCULATE_CART_TOTAL_PRICE);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                cart.setTotalPrice(resultSet.getDouble("cart_total"));
            }
            connection.close();
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return cart.getTotalPrice();
    }

    public int getNumberOfItem(Integer userId, Cart cart) {
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_CALCULATE_NUBER_CART_ITEM);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                cart.setNumberOfItem(resultSet.getInt("number_item"));
            }
            connection.close();
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return cart.getNumberOfItem();
    }
}