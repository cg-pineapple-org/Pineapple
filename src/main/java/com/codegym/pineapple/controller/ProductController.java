package com.codegym.pineapple.controller;

import com.codegym.pineapple.model.Category;
import com.codegym.pineapple.model.Product;
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

@WebServlet(name = "ProductController", urlPatterns = {"/products","/products/list", "/products/edit", "/products/add","/index"})
public class ProductController extends HttpServlet {
    private final Integer DEFAULT_PAGE_SIZE = 10;
    private final Integer DEFAULT_PAGE = 1;
    private final Integer MIN_INVALID_PAGE = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        HttpSession httpSession;
        Integer pageSize;
        Integer page;
        List<List> combinedList;
        List<Category> categoryList;
        List<Product> productList;

        switch (action){
            case "/products/list":
                String pageSizeStr = req.getParameter("page_size");
                String pageStr = req.getParameter("page");
                String order = req.getParameter("order");

                boolean isPageSizePresent = !Optional.ofNullable(pageSizeStr).isPresent();
                boolean isPagePresent = !Optional.ofNullable(pageStr).isPresent();
                boolean isOrderPresent = Optional.ofNullable(order).isPresent();

                if (isPageSizePresent || isPagePresent){
                    resp.sendRedirect("/products/list?page_size=" + DEFAULT_PAGE_SIZE + "&page=" + DEFAULT_PAGE);
                    return;
                }

                pageSize = Integer.parseInt(pageSizeStr);
                page = Integer.parseInt(pageStr);

                if (page <= MIN_INVALID_PAGE){
                    resp.sendRedirect("/products/list?page_size=" + pageSize + "&page=" + DEFAULT_PAGE);
                }
                else {
                    if (!isOrderPresent) order = "ASC";
                    List<Map<String, Object>> productDetailList = ProductService.getInstance().getAllProducts(pageSize, page, order);

                    if (!Optional.ofNullable(productDetailList).isPresent()) {
                        httpSession = req.getSession(false);
                        String currentPage = String.valueOf(httpSession.getAttribute("currentPage"));
                        resp.sendRedirect("/products/list?page_size=" + pageSize + "&page=" + currentPage);
                    } else {
                        httpSession = req.getSession();
                        httpSession.setAttribute("currentPage", page);
                        httpSession.setAttribute("currentPageSize", pageSize);
                        String addedProductMsg = String.valueOf(httpSession.getAttribute("add_product_msg"));
                        httpSession.removeAttribute("add_product_msg");

                        req.setAttribute("message", addedProductMsg);
                        req.setAttribute("product_list", productDetailList);
                        req.setAttribute("page_size", pageSize);
                        req.setAttribute("page", page);
                        req.getRequestDispatcher("/WEB-INF/view/product/product_list.jsp").forward(req, resp);
                    }
                }
                break;

            case "/products":
                Integer id = Integer.valueOf(req.getParameter("id"));

                combinedList = ProductService.getInstance().getProductByCategoryId(id);
                productList = combinedList.get(0);
                categoryList = combinedList.get(1);

                Category category = categoryList.get(0);

                req.setAttribute("product_list", productList);
                req.setAttribute("category_list", categoryList);
                req.setAttribute("category", category);
                req.getRequestDispatcher("/WEB-INF/view/product/product.jsp").forward(req, resp);
                break;

            case "/products/add":
                combinedList = ProductService.getInstance().getAllCategoryProduct();
                categoryList = combinedList.get(0);
                productList = combinedList.get(1);

                req.setAttribute("category_list", categoryList);
                req.setAttribute("product_list", productList);
                req.getRequestDispatcher("/WEB-INF/view/product/product_add.jsp").forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        Integer id;
        String color;
        Integer amount;
        Double price;
        String description;

        switch (action){
            case "/products/edit":
                id = Integer.valueOf(req.getParameter("id"));
                color = req.getParameter("color");
                amount = Integer.valueOf(req.getParameter("amount"));
                price = Double.valueOf(req.getParameter("price"));
                description = req.getParameter("description");

                ProductService.getInstance().editProduct(id, color, amount, price, description);

                HttpSession httpSession = req.getSession(false);
                String pageSize = String.valueOf(httpSession.getAttribute("currentPageSize"));
                String page = String.valueOf(httpSession.getAttribute("currentPage"));
                resp.sendRedirect("/products/list?page_size=" + pageSize + "&page=" + page);
                break;

            case "/products/add":
                Integer categoryId = Integer.valueOf(req.getParameter("category_id"));
                Integer productId = Integer.valueOf(req.getParameter("product_id"));
                color = req.getParameter("color");
                amount = Integer.valueOf(req.getParameter("amount"));
                price = Double.valueOf(req.getParameter("price"));
                description = req.getParameter("description");

                ProductService.getInstance().addProduct(color, amount, price, description, productId);
                httpSession = req.getSession(false);
                Integer currentPage = 1;
                String currentPageSize = String.valueOf(httpSession.getAttribute("currentPageSize"));
                String order = "DESC";

                httpSession.setAttribute("add_product_msg", "Added new product successfully!");
                resp.sendRedirect("/products/list?page_size=" + currentPageSize + "&page=" + currentPage + "&order=" + order);
        }
    }
}
