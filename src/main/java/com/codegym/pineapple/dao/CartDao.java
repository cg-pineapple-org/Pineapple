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
import java.util.Optional;

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
                productDetail.setAmount(resultSet.getInt("amount"));
                cartItem.setQuantity(resultSet.getInt("quantity"));
                cartItem.setProductDetail(productDetail);
                cartItem.setProductName(resultSet.getString("name"));
                cartItem.setSubTotal(resultSet.getDouble("sub_total"));
                cartItem.setProductDetailId(resultSet.getInt("id"));
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

    public CartItem getCartItemByProductDetailId(Integer productDetailId) {
        CartItem cartItem = null;
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_FIND_CART_ITEM_BY_PRODUCT_DETAIL_ID);
            preparedStatement.setInt(1, productDetailId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                cartItem = new CartItem();
                cartItem.setId(resultSet.getInt("id"));
                cartItem.setProductDetailId(resultSet.getInt("product_detail_id"));
                cartItem.setQuantity(resultSet.getInt("quantity"));
                log.info("Found cartItem");
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartItem;
    }

    public boolean updateCartItemWithNewQuantity(CartItem cartItem,Integer quantity, Integer productDetailId, Integer cartId){
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_UPDATE_CART_ITEM_WITH_NEW_QUANTITY);
            preparedStatement.setInt(1, quantity);
            preparedStatement.setInt(2, productDetailId);
            preparedStatement.setInt(3, cartId);

            if (preparedStatement.executeUpdate() > 0) {
                cartItem.setQuantity(quantity);
                log.info("Updated cartItemQuantity");
                return true;
            } else {
                log.info(" Failed to update cartItemQuantity");
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateCartItemQuantity(CartItem cartItem,Integer quantity, Integer productDetailId, Integer cartId){
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_UPDATE_CART_ITEM_QUANTITY);
            preparedStatement.setInt(1, quantity);
            preparedStatement.setInt(2, productDetailId);
            preparedStatement.setInt(3, cartId);

            if (preparedStatement.executeUpdate() > 0) {
                cartItem.setQuantity(quantity);
                log.info("Updated cartItemQuantity");
                return true;
            } else {
                log.info(" Failed to update cartItemQuantity");
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean addNewItemToCart(Cart cart, Integer cartId, Integer productDetailId, Integer quantity) {
        try {
            Connection connection = JdbcConnection.getConnection();
            CartItem cartItem = new CartItem();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_ADD_NEW_ITEM_TO_CART);
            preparedStatement.setInt(1, cartId);
            preparedStatement.setInt(2, productDetailId);
            preparedStatement.setInt(3, quantity);

            if (preparedStatement.executeUpdate() > 0) {
                cartItem.setProductDetailId(productDetailId);
                cart.getCartItems().add(cartItem);
                log.info("Added cartItem");
                return true;
            } else {
                log.info("Failed to add cartItem");
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean addToCart(Cart cart, Integer cartId, Integer productDetailId, Integer quantity) {
        CartItem cartItem = getCartItemByProductDetailId(productDetailId);
        if(Optional.ofNullable(cartItem).isPresent()){
            updateCartItemQuantity(cartItem, quantity, productDetailId, cartId);
        }else{
            addNewItemToCart(cart, cartId, productDetailId, quantity);
        }
        return true;
    }

    public boolean deleteCartItem(Cart cart, Integer productDetailId) {
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_DELETE_CART_ITEM_BY_PRODUCT_DETAIL_ID);
            preparedStatement.setInt(1, productDetailId);

            if (preparedStatement.executeUpdate() > 0) {
                log.info("Delete cart item successful");
                for (int i = 0; i < cart.getCartItems().size(); i++) {
                    if (cart.getCartItems().get(i).getProductDetailId().equals(productDetailId)) {
                        cart.getCartItems().remove(i);
                    }
                }
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

    public boolean deleteAllCartItem(Cart cart) {
        try {
            Connection connection = JdbcConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(QueryConstant.QUERY_DELETE_ALL_CART_ITEM);
            preparedStatement.setInt(1, cart.getId());

            if (preparedStatement.executeUpdate() > 0) {
                log.info("Delete all cart item successful");
                for (int i = 0; i < cart.getCartItems().size(); i++) {
                    cart.getCartItems().remove(i);
                }
                return true;
            } else {
                log.info("Delete all cart item failed");
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}