package com.codegym.pineapple.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private Integer id;
    private Integer userId;
    private List<CartItem> cartItems;
    private double totalPrice;

    public Cart() {
        cartItems = new ArrayList<>();
    }

    public Cart(Integer id, Integer userId, List<CartItem> cartItems, double totalPrice) {
        this.id = id;
        this.userId = userId;
        this.cartItems = cartItems;
        this.totalPrice = totalPrice;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public void add(CartItem item) {
        this.cartItems.add(item);
    }

    public void clear() {
        this.cartItems.clear();
        this.totalPrice = 0;
    }
}
