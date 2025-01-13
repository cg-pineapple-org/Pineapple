package com.codegym.pineapple.constant;

public class QueryConstant {
    public static final String QUERY_FIND_PRODUCT = "select id, name from products where id = ?;";
    public static final String QUERY_FIND_PRODUCT_DETAIL = "select id, color, amount, price, description from product_details where id = ?;";
    public static final String QUERY_FIND_PRODUCT_DETAIL_BY_PRODUCT_ID = "select pd.id, pd.color, pd.amount, pd.price, pd.description, pd.product_id, p.name, p.category_id from product_details pd inner join products p on pd.product_id = p.id where pd.product_id = ?;";
    public static final String QUERY_FIND_PRODUCT_BY_CATEGORY_ID = "select p.id, p.name, p.category_id, c.name from products p inner join categories c on p.category_id = c.id where p.category_id = ?;";
    public static final String QUERY_GET_PASSWORD_BY_USERNAME = "SELECT password FROM accounts WHERE username = ?";
    public static final String QUERY_GET_USERNAME_BY_USERNAME = "SELECT username FROM accounts WHERE username = ?";
    public static final String QUERY_GET_EMAIL_BY_EMAIL = "SELECT email FROM users WHERE email = ?";
    public static final String QUERY_ADD_USER = "INSERT INTO users (first_name, last_name, country, day_of_birth, email, phone, role_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
    public static final String QUERY_ADD_ACCOUNT = "INSERT INTO accounts (user_id, username, password) VALUES (LAST_INSERT_ID(), ?, ?)";
}
