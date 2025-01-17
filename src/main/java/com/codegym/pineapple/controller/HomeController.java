package com.codegym.pineapple.controller;

import com.codegym.pineapple.model.Product;
import com.codegym.pineapple.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", urlPatterns = {"/", "/home"})
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Product> productList = ProductService.getInstance().getProductsInRange(129, 138);

        req.setAttribute("featuredProducts", productList);

        req.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(req, resp);

    }
}

