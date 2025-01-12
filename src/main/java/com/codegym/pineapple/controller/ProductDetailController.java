package com.codegym.pineapple.controller;

import com.codegym.pineapple.model.Category;
import com.codegym.pineapple.model.Product;
import com.codegym.pineapple.model.ProductDetail;
import com.codegym.pineapple.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductDetailController" , urlPatterns = {"/products/detail"})
public class ProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action){
            case "/products/detail":
                Integer id = Integer.parseInt(req.getParameter("id"));
                List<List> CombinedProductDetailList = ProductService.getInstance().getProductDetailByProductId(id);

                List<ProductDetail> productDetailList = CombinedProductDetailList.get(0);

                List<Product> mainPorudctList = CombinedProductDetailList.get(1);
                Product mainProduct = mainPorudctList.get(0);

                List<Product> relatedProductList = CombinedProductDetailList.get(2);

                List<Category> categoryList = CombinedProductDetailList.get(3);
                Category mainCategory = categoryList.get(0);

                req.setAttribute("product", mainProduct);
                req.setAttribute("product_details", productDetailList);
                req.setAttribute("related_products", relatedProductList);
                req.setAttribute("category", mainCategory);

                req.getRequestDispatcher("/WEB-INF/view/product/product_detail.jsp").forward(req, resp);
                break;
        }
    }
}
