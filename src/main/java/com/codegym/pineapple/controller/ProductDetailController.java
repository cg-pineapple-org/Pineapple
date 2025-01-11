package com.codegym.pineapple.controller;

import com.codegym.pineapple.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductDetailController" , urlPatterns = {"/product_details"})
public class ProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action){
            case "/product_details":
                Integer id = Integer.parseInt(req.getParameter("id"));
                List<List> list = ProductService.getInstance().getProductDetailByProductId(id);
                req.setAttribute("product", list.get(1).get(0));
                req.setAttribute("product_details", list.get(0));
                req.setAttribute("related_products", list.get(2));
                req.setAttribute("category", list.get(3).get(0));
                req.getRequestDispatcher("WEB-INF/view/product/product_detail.jsp").forward(req, resp);
                break;
        }
    }
}
