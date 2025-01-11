package com.codegym.pineapple.model;

public class ProductDetail {
    private Integer id;
    private String color;
    private Integer amount;
    private Double price;
    private String description;
    private Integer productId;

    public ProductDetail() {
    }

    public ProductDetail(String color, Integer amount, Double price, String description, Integer productId) {
        this.color = color;
        this.amount = amount;
        this.price = price;
        this.description = description;
        this.productId = productId;
    }

    public ProductDetail(Integer id, String color, Integer amount, Double price, String description, Integer productId) {
        this.id = id;
        this.color = color;
        this.amount = amount;
        this.price = price;
        this.description = description;
        this.productId = productId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }
}
