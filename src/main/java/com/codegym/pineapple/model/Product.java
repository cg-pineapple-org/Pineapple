package com.codegym.pineapple.model;

public class Product {
    private Integer id;
    private String name;
    private Integer categoryId;

    public Product() {
    }

    public Product(String name, Integer categoryId) {
        this.name = name;
        this.categoryId = categoryId;
    }

    public Product(Integer id, String name, Integer categoryId) {
        this.id = id;
        this.name = name;
        this.categoryId = categoryId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }
}
