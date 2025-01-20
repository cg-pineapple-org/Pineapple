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

@WebServlet(name = "SearchController", urlPatterns = {"/search"})
public class SearchController extends HttpServlet {
    private final ProductService productService = ProductService.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("searchKeyword");
        List<Product> products = productService.searchProductsByName(query);

        request.setAttribute("query", query);
        request.setAttribute("products", products);
        request.getRequestDispatcher("WEB-INF/view/search_result.jsp").forward(request, response);
    }
}

