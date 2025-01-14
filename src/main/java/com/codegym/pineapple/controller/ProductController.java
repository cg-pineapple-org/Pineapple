package com.codegym.pineapple.controller;

import com.codegym.pineapple.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@WebServlet(name = "ProductController", urlPatterns = {"/products/list"})
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        HttpSession httpSession;

        switch (action){
            case "/products/list":
                Integer pageSize = Integer.parseInt(req.getParameter("page_size"));
                Integer page = Integer.parseInt(req.getParameter("page"));

                if (page == 0){
                    resp.sendRedirect("/products/list?page_size=" + pageSize + "&page=1");
                }
                else {
                    List<Map<String, Object>> productList = ProductService.getInstance().getAllProducts(pageSize, page);

                    if (!Optional.ofNullable(productList).isPresent()) {
                        httpSession = req.getSession(false);
                        String currentPage = String.valueOf(httpSession.getAttribute("currentPage"));
                        resp.sendRedirect("/products/list?page_size=" + pageSize + "&page=" + currentPage);
                    } else {
                        httpSession = req.getSession();
                        httpSession.setAttribute("currentPage", page);

                        req.setAttribute("product_list", productList);
                        req.setAttribute("page_size", pageSize);
                        req.setAttribute("page", page);
                        req.getRequestDispatcher("/WEB-INF/view/product/product_list.jsp").forward(req, resp);
                    }
                }
                break;
        }
    }
}
