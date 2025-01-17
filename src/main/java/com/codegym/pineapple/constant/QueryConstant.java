package com.codegym.pineapple.constant;

public class QueryConstant {
    public static final String QUERY_FIND_PRODUCT = "select id, name from products where id = ?;";
    public static final String QUERY_FIND_PRODUCT_DETAIL = "select id, color, amount, price, description from product_details where id = ?;";
    public static final String QUERY_FIND_PRODUCT_DETAIL_BY_PRODUCT_ID = "select pd.id, pd.color, pd.amount, pd.price, pd.description, pd.product_id, p.name, p.category_id from product_details pd inner join products p on pd.product_id = p.id where pd.product_id = ?;";
    public static final String QUERY_FIND_PRODUCT_BY_CATEGORY_ID = "select p.id, p.name, p.category_id, c.name from products p inner join categories c on p.category_id = c.id where p.category_id = ?;";
    public static final String QUERY_FIND_ALL_PRODUCT = "select pd.id, c.name, p.name, pd.color, pd.amount, pd.price, pd.description, pd.product_id from product_details pd  inner join products p on pd.product_id = p.id inner join categories c on p.category_id = c.id order by pd.id limit ? offset ?;";
    public static final String QUERY_EDIT_PRODUCT = "update product_details set color=?, amount=?, price=?, description=? where id=?;";

    public static final String QUERY_GET_PASSWORD_BY_USERNAME = "SELECT password FROM accounts WHERE username = ?";
    public static final String QUERY_GET_USERNAME_BY_USERNAME = "SELECT username FROM accounts WHERE username = ?";
    public static final String QUERY_GET_EMAIL_BY_EMAIL = "SELECT email FROM users WHERE email = ?";
    public static final String QUERY_ADD_USER = "INSERT INTO users (first_name, last_name, country, day_of_birth, email, phone, role_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
    public static final String QUERY_ADD_ACCOUNT = "INSERT INTO accounts (user_id, username, password) VALUES (LAST_INSERT_ID(), ?, ?)";
    public static final String QUERY_UPDATE_PASSWORD = "UPDATE accounts SET password = ? WHERE username = ?";
    public static final String QUERY_GET_GMAIL_AND_USERNAME = "SELECT 1 FROM accounts a JOIN users u ON a.user_id = u.id WHERE a.username = ? AND u.email = ?";
    public static final String QUERY_RESET_TOKEN = "UPDATE accounts SET reset_token = ?, reset_token_expiry = ? WHERE username = ?";
    public static final String QUERY_GET_PASSWORD_USERNAME = "SELECT password FROM accounts WHERE username = ?";
    public static final String QUERY_DELETE_OLD_TOKEN = "DELETE FROM reset_tokens WHERE username = ?";
    public static final String GET_ACCOUNT_BY_USERNAME_QUERY = "" +
            "SELECT user_id, username, password  \n" +
            "        FROM accounts \n" +
            "        WHERE username = ?;";

    public static final String GET_USER_BY_ID_QUERY = "" +
            "SELECT id, first_name, last_name,country, day_of_birth, email, \n" +
            "               phone, role_id, cart_id \n" +
            "        FROM users \n" +
            "        WHERE id = ?;";
    public static final String QUERY_LIST_CART_ITEMS = "SELECT p.name, pd.color, pd.price, pd.id, sum(ci.quantity) AS quantity, (sum(ci.quantity) * pd.price) AS sub_total\n" +
            "FROM carts c\n" +
            "JOIN users u ON u.cart_id = c.id\n" +
            "JOIN cart_items ci ON ci.cart_id = c.id\n" +
            "JOIN product_details pd ON ci.product_detail_id = pd.id\n" +
            "JOIN products p ON p.id = pd.product_id\n" +
            "GROUP BY  pd.id\n" +
            "ORDER BY p.id";

    public static final String QUERY_CALCULATE_CART_TOTAL_PRICE = "SELECT sum(subquery.sub_total) AS cart_total\n" +
            "FROM (SELECT (sum(ci.quantity) * pd.price) AS sub_total\n" +
            "FROM carts c\n" +
            "JOIN users u ON u.cart_id = c.id\n" +
            "JOIN cart_items ci ON ci.cart_id = c.id\n" +
            "JOIN product_details pd ON ci.product_detail_id = pd.id\n" +
            "GROUP BY pd.id) AS subquery";

    public static final String QUERY_CALCULATE_NUBER_CART_ITEM = "SELECT count(subquery.id) AS number_item\n" +
            "FROM (SELECT pd.id AS id\n" +
            "FROM carts c\n" +
            "JOIN users u ON u.cart_id = c.id\n" +
            "JOIN cart_items ci ON ci.cart_id = c.id\n" +
            "JOIN product_details pd ON ci.product_detail_id = pd.id\n" +
            "JOIN products p ON p.id = pd.product_id\n" +
            "GROUP BY  pd.id) AS subquery";
}