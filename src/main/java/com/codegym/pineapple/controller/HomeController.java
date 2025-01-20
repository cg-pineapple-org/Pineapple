package com.codegym.pineapple.controller;

import com.codegym.pineapple.model.Product;
import com.codegym.pineapple.service.ProductService;

import com.codegym.pineapple.model.Cart;
import com.codegym.pineapple.service.CartService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "HomeController", urlPatterns = {"/", "/home"})
public class HomeController extends HttpServlet {
    private CartService cartService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        cartService = new CartService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Product> productList = ProductService.getInstance().getProductsInRange(129, 138);
        req.setAttribute("featuredProducts", productList);

        try {
            HttpSession session = req.getSession();
            Integer userId = (Integer) session.getAttribute("userId");
            Integer defaultUserId = 1;
            Cart cart = cartService.getCart(Optional.ofNullable(userId).orElse(defaultUserId));
            session.setAttribute("cart", cart);

            if (session != null) {
                String message = (String) session.getAttribute("successMessage");
                req.setAttribute("successMessage", message);
            }
            req.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


