package com.codegym.pineapple.controller;

import com.codegym.pineapple.model.Category;
import com.codegym.pineapple.model.Product;
import com.codegym.pineapple.service.CategoryService;
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

@WebServlet(name = "ProductController", urlPatterns = {"/products","/products/list", "/products/edit","/index"})
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        HttpSession httpSession;
        Integer pageSize;
        Integer page;
        Integer defaultPageSize = 10;
        Integer defaultPage = 1;
        Integer minInvalidPage = 0;

        switch (action){
            case "/products/list":
                String pageSizeStr = req.getParameter("page_size");
                String pageStr = req.getParameter("page");

                boolean isPageSizePresent = !Optional.ofNullable(pageSizeStr).isPresent();
                boolean isPagePresent = !Optional.ofNullable(pageStr).isPresent();

                if (isPageSizePresent || isPagePresent){
                    resp.sendRedirect("/products/list?page_size=" + defaultPageSize + "&page=" + defaultPage);
                    return;
                }

                pageSize = Integer.parseInt(pageSizeStr);
                page = Integer.parseInt(pageStr);

                if (page <= minInvalidPage){
                    resp.sendRedirect("/products/list?page_size=" + pageSize + "&page=" + defaultPage);
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
                        httpSession.setAttribute("currentPageSize", pageSize);

                        req.setAttribute("product_list", productList);
                        req.setAttribute("page_size", pageSize);
                        req.setAttribute("page", page);
                        req.getRequestDispatcher("/WEB-INF/view/product/product_list.jsp").forward(req, resp);
                    }
                }
                break;

            case "/products":
                Integer id = Integer.valueOf(req.getParameter("id"));

                List<List> combinedList = ProductService.getInstance().getProductByCategoryId(id);
                List<Product> productList = combinedList.get(0);
                List<Category> categoryList = combinedList.get(1);

                Category category = categoryList.get(0);

                req.setAttribute("product_list", productList);
                req.setAttribute("category_list", categoryList);
                req.setAttribute("category", category);
                req.getRequestDispatcher("/WEB-INF/view/product/product.jsp").forward(req, resp);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action){
            case "/products/edit":
                Integer id = Integer.valueOf(req.getParameter("id"));
                String color = req.getParameter("color");
                Integer amount = Integer.valueOf(req.getParameter("amount"));
                Double price = Double.valueOf(req.getParameter("price"));
                String description = req.getParameter("description");

                ProductService.getInstance().editProduct(id, color, amount, price, description);

                HttpSession httpSession = req.getSession(false);
                String pageSize = String.valueOf(httpSession.getAttribute("currentPageSize"));
                String page = String.valueOf(httpSession.getAttribute("currentPage"));
                resp.sendRedirect("/products/list?page_size=" + pageSize + "&page=" + page);
                break;
        }
    }
}
