package com.codegym.pineapple.controller;

import com.codegym.pineapple.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ProductController", urlPatterns = {"/products/list"})
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action){
            case "/products/list":
                List<Map<String, Object>> productList = ProductService.getInstance().getAllProducts();
                req.setAttribute("product_list", productList);
                req.getRequestDispatcher("/WEB-INF/view/product/product_list.jsp").forward(req, resp);
                break;
        }
    }
}
