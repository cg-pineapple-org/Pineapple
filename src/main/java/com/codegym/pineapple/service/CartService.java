package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.CartDao;
import com.codegym.pineapple.model.Cart;
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
}