package com.codegym.pineapple.model;

public class CartItem {
    private Integer id;
    private Integer cartId;
    private Integer productDetailId;
    private Integer quantity;
//    private ProductDetail productDetail;

    public CartItem() {
    }

    public CartItem(Integer cartId, Integer productDetailId, Integer quantity) {
        this.cartId = cartId;
        this.productDetailId = productDetailId;
        this.quantity = quantity;
    }

    public CartItem(Integer id, Integer cartId, Integer productDetailId, Integer quantity) {
        this.id = id;
        this.cartId = cartId;
        this.productDetailId = productDetailId;
        this.quantity = quantity;
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

    public Integer getProductDetailId() {
        return productDetailId;
    }

    public void setProductDetailId(Integer productDetailId) {
        this.productDetailId = productDetailId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}
