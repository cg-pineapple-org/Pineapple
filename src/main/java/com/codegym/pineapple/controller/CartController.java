package com.codegym.pineapple.controller;

import com.codegym.pineapple.service.CartService;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "cartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {
    private CartService cartService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        cartService = new CartService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        switch (action) {
            case "/cart":
                req.setAttribute("cart", cartService.getCart(1));
                req.getRequestDispatcher("/WEB-INF/view/cart/cart.jsp").forward(req, resp);
                break;
        }
    }
}