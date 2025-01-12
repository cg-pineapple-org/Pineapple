package com.codegym.pineapple.constant;

public class QueryConstant {
    public static final String QUERY_FIND_PRODUCT = "select id, name from products where id = ?;";
    public static final String QUERY_FIND_PRODUCT_DETAIL = "select id, color, amount, price, description from product_details where id = ?;";
    public static final String QUERY_FIND_PRODUCT_DETAIL_BY_PRODUCT_ID = "select pd.id, pd.color, pd.amount, pd.price, pd.description, pd.product_id, p.name, p.category_id from product_details pd inner join products p on pd.product_id = p.id where pd.product_id = ?;";
    public static final String QUERY_FIND_PRODUCT_BY_CATEGORY_ID = "select p.id, p.name, p.category_id, c.name from products p inner join categories c on p.category_id = c.id where p.category_id = ?;";
    public static final String QUERY_FIND_ALL_PRODUCT = "select pd.id, c.name, p.name, pd.color, pd.amount, pd.price, pd.description, pd.product_id from product_details pd  inner join products p on pd.product_id = p.id inner join categories c on p.category_id = c.id;";
}
