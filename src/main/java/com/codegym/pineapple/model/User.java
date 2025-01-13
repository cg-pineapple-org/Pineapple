package com.codegym.pineapple.model;

public class User {
    private Integer id;
    private String first_name;
    private String last_name;
    private String country;
    private String date_of_birth;
    private String email;
    private String phone;
    private Integer role_id;
    private Integer cart_id;

    public User() {
    }

    public User(String first_name, String last_name, String country, String date_of_birth, String email, String phone, Integer role_id, Integer cart_id) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.country = country;
        this.date_of_birth = date_of_birth;
        this.email = email;
        this.phone = phone;
        this.role_id = role_id;
        this.cart_id = cart_id;
    }

    public User(Integer id, String first_name, String last_name, String country, String date_of_birth, String email, String phone, Integer role_id, Integer cart_id) {
        this.id = id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.country = country;
        this.date_of_birth = date_of_birth;
        this.email = email;
        this.phone = phone;
        this.role_id = role_id;
        this.cart_id = cart_id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getRole_id() {
        return role_id;
    }

    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }

    public Integer getCart_id() {
        return cart_id;
    }

    public void setCart_id(Integer cart_id) {
        this.cart_id = cart_id;
    }
}
