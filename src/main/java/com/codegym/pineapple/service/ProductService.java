package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.ProductDao;
import com.codegym.pineapple.model.Product;
import com.codegym.pineapple.model.ProductDetail;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public class ProductService {
    private static ProductService productService = null;

    private ProductService(){}

    public static ProductService getInstance(){
        if (!Optional.ofNullable(productService).isPresent()){
            productService = new ProductService();
        }
        return productService;
    }

    public Product getProduct(Integer id) {
        return ProductDao.getInstance().findProduct(id);
    }

    public ProductDetail getProductDetail(Integer id){
        return  ProductDao.getInstance().findProductDetail(id);
    }

    public List<List> getProductDetailByProductId(Integer id){
        return ProductDao.getInstance().findProductDetailByProductId(id);
    }

    public List<Map<String, Object>> getAllProducts(Integer pageSize, Integer page, String order){
        List<Map<String, Object>> resultList = ProductDao.getInstance().findAllProduct(pageSize, page, order);

        if (resultList.isEmpty()) return null;
        return resultList;
    }

    public void editProduct(Integer id, String color, Integer amount, Double price, String description){
        ProductDao.getInstance().updateProduct(id, color, amount, price, description);
    }

    public List<Product> getProductsInRange(int startId, int endId) {
        return ProductDao.getInstance().findProductsInRange(startId, endId);
    }

    public List<List> getProductByCategoryId(Integer id){
        return ProductDao.getInstance().findProductByCategoryId(id);
    }


    public List<List> getAllCategoryProduct(){
        return ProductDao.getInstance().findAllCategoryProduct();
    }

    public void addProduct(String color, Integer amount, Double price, String description, Integer productId){
        ProductDao.getInstance().insertProductDetail(color, amount, price, description, productId);
    }

    public List<Product> searchProductsByName(String name) {
        return ProductDao.getInstance().searchProductsByName(name);
    }
}
