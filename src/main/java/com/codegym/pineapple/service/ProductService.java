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

    public List<Map<String, Object>> getAllProducts(Integer pageSize, Integer page){
        List<Map<String, Object>> resultList = ProductDao.getInstance().findAllProduct(pageSize, page);

        if (resultList.isEmpty()) return null;
        return resultList;
    }
}
