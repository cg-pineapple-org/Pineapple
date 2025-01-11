package com.codegym.pineapple.model;

public class Product {
    private Integer id;
    private String name;
    private Integer categoriesId;

    public Product() {
    }

    public Product(String name, Integer categoriesId) {
        this.name = name;
        this.categoriesId = categoriesId;
    }

    public Product(Integer id, String name, Integer categoriesId) {
        this.id = id;
        this.name = name;
        this.categoriesId = categoriesId;
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

    public Integer getCategoriesId() {
        return categoriesId;
    }

    public void setCategoriesId(Integer categoriesId) {
        this.categoriesId = categoriesId;
    }
}
