package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.CartDao;
import com.codegym.pineapple.model.Cart;
import com.codegym.pineapple.model.CartItem;

import java.util.Optional;

public class CartService {
    private CartDao cartDao;

    public CartService() {
        cartDao = new CartDao();
    }

    public Cart getCart(Integer userId) {
        Cart cart = cartDao.getCart(userId);
        cart.setTotalPrice(cartDao.getCartTotalPrice(userId, cart));
        cart.setNumberOfItem(cartDao.getNumberOfItem(userId, cart));
        if (Optional.ofNullable(cart).isPresent()) {
            return cart;
        }
        return null;
    }

    public Double getTotalPrice(Integer userId, Cart cart) {
        return cartDao.getCartTotalPrice(userId, cart);
    }

    public Integer getNumberOfItem(Integer userId, Cart cart) {
        return cartDao.getNumberOfItem(userId, cart);
    }

    public boolean addToCart(Cart cart, Integer cartId, Integer productDetailId, Integer quantity){
        return cartDao.addToCart(cart, cartId, productDetailId, quantity);
    }

    public CartItem getCartItem(Integer productDetailId){
        return cartDao.getCartItemByProductDetailId(productDetailId);
    }

    public boolean updateCartItemWithNewQuantity(CartItem cartItem, Integer quantity, Integer productDetailId, Integer cartId){
        return cartDao.updateCartItemWithNewQuantity(cartItem, quantity, productDetailId, cartId);
    }

    public boolean deleteCartItem(Cart cart, Integer producDetailId) {
        return cartDao.deleteCartItem(cart, producDetailId);
    }

    public boolean deleteAllCartItem(Cart cart) {
        return cartDao.deleteAllCartItem(cart);
    }
}