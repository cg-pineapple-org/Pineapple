package com.codegym.pineapple.controller;

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

@WebServlet(name = "CartController", urlPatterns = {"/cart", "/cart/remove"})
public class CartController extends HttpServlet {
    private CartService cartService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        cartService = new CartService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        HttpSession session = req.getSession(false);
        Cart cart = (Cart) session.getAttribute("cart");
        switch (action) {
            case "/cart":
                req.getRequestDispatcher("/WEB-INF/view/cart/cart1.jsp").forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        HttpSession session = req.getSession(false);
        Cart cart = (Cart) session.getAttribute("cart");
        switch (action) {
            case "/cart":
                Integer cartId = cart.getId();
                Integer productDetailId = Integer.valueOf(req.getParameter("productDetailId"));
                Integer quantity = Integer.valueOf(req.getParameter("quantity"));

                cartService.addToCart(cartId, productDetailId, quantity);

                req.setAttribute("message", "Added to cart successfully");
                req.getRequestDispatcher("/WEB-INF/view/cart/cart1.jsp").forward(req, resp);
                break;

            case "/cart/remove":
                Integer id = Integer.parseInt(req.getParameter("id"));
                boolean isRemoved = cartService.deleteCartItem(cart, id);
                if (isRemoved) {
                    cart.setNumberOfItem(cart.getNumberOfItem() - 1);
                    cart.setTotalPrice(cartService.getTotalPrice(1, cart));
                    session.setAttribute("cart", cart);
                    resp.sendRedirect("/cart");
                }
                break;

            case "/cart/clear":
                boolean isRemoved1 = cartService.deleteAllCartItem(cart);
                if (isRemoved1) {
                    cart.setNumberOfItem(0);
                    cart.setTotalPrice(0d);
                    session.setAttribute("cart", cart);
                    resp.sendRedirect("/cart");
                }
                break;
        }
    }
}