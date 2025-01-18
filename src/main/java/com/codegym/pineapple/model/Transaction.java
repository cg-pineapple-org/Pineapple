package com.codegym.pineapple.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Transaction {
    Integer id;
    Integer cartId;
    LocalDate checkoutDate;

    public Transaction() {
    }

    public Transaction(Integer cartId, LocalDate checkoutDate) {
        this.cartId = cartId;
        this.checkoutDate = checkoutDate;
    }

    public Transaction(Integer id, Integer cartId, LocalDate checkoutDate) {
        this.id = id;
        this.cartId = cartId;
        this.checkoutDate = checkoutDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public LocalDate getCheckoutDate() {
        return checkoutDate;
    }

    public void setCheckoutDate(LocalDate checkoutDate) {
        this.checkoutDate = checkoutDate;
    }
}
