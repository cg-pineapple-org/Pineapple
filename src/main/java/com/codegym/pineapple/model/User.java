package com.codegym.pineapple.model;

public class User {
    private Integer id;
    private String firstName;
    private String lastName;
    private String country;
    private String dateOfBirth;
    private String email;
    private String phone;
    private Integer roleId;
    private Integer cartId;

    public User() {
    }

    public User(String firstName, String lastName, String country, String dateOfBirth, String email, String phone, Integer roleId, Integer cartId) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.country = country;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.phone = phone;
        this.roleId = roleId;
        this.cartId = cartId;
    }

    public User(Integer id, String firstName, String lastName, String country, String dateOfBirth, String email, String phone, Integer roleId, Integer cartId) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.country = country;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.phone = phone;
        this.roleId = roleId;
        this.cartId = cartId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
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

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }
}
