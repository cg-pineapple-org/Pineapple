package com.codegym.pineapple.model;

public class CartItem {
    private Integer id;
    private Integer cartId;
    private Integer productDetailId;
    private Integer quantity;
    private Double subTotal;
    private String productName;
    private ProductDetail productDetail;

    public CartItem() {
    }

    public CartItem(Integer cartId, Integer productDetailId, Integer quantity, Double subTotal, String productName, ProductDetail productDetail) {
        this.cartId = cartId;
        this.productDetailId = productDetailId;
        this.quantity = quantity;
        this.subTotal = subTotal;
        this.productName = productName;
        this.productDetail = productDetail;
    }

    public CartItem(Integer id, Integer cartId, Integer productDetailId, Integer quantity, Double subTotal, String productName, ProductDetail productDetail) {
        this.id = id;
        this.cartId = cartId;
        this.productDetailId = productDetailId;
        this.quantity = quantity;
        this.subTotal = subTotal;
        this.productName = productName;
        this.productDetail = productDetail;
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

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public ProductDetail getProductDetail() {
        return productDetail;
    }

    public void setProductDetail(ProductDetail productDetail) {
        this.productDetail = productDetail;
    }

    public Double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }
}