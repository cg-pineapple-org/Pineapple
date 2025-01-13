package com.codegym.pineapple.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private Integer id;
    private Integer userId;
    private List<CartItem> cartItems;
    private Double totalPrice = 0d;
    private int numberOfItem;

    public Cart() {
        cartItems = new ArrayList<>();
    }

    public Cart(Integer userId, List<CartItem> cartItems, Double totalPrice, int numberOfItem) {
        this.userId = userId;
        this.cartItems = cartItems;
        this.totalPrice = totalPrice;
        this.numberOfItem = numberOfItem;
    }

    public Cart(Integer id, Integer userId, List<CartItem> cartItems, Double totalPrice, int numberOfItem) {
        this.id = id;
        this.userId = userId;
        this.cartItems = cartItems;
        this.totalPrice = totalPrice;
        this.numberOfItem = numberOfItem;
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

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getNumberOfItem() {
        return numberOfItem;
    }

    public void setNumberOfItem(int numberOfItem) {
        this.numberOfItem = numberOfItem;
    }

    public void add(CartItem item) {
        this.cartItems.add(item);
    }

    public void clear() {
        this.cartItems.clear();
        this.totalPrice = 0d;
    }
}
