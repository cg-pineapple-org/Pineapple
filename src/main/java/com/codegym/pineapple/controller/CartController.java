package com.codegym.pineapple.controller;

import com.codegym.pineapple.model.Cart;
import com.codegym.pineapple.model.CartItem;
import com.codegym.pineapple.service.CartService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Optional;

@WebServlet(name = "CartController", urlPatterns = {"/cart", "/cart/remove", "/cart/clear", "/cart/update"})
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
                if (!Optional.ofNullable(cart).isPresent()) {
                    req.getRequestDispatcher("/WEB-INF/view/cart/signin_cart.jsp").forward(req, resp);
                } else if (cart.getCartItems().isEmpty()) {
                    req.getRequestDispatcher("/WEB-INF/view/cart/clear_cart.jsp").forward(req, resp);
                } else {
                    req.getRequestDispatcher("/WEB-INF/view/cart/cart.jsp").forward(req, resp);
                }
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        HttpSession session = req.getSession(false);
        Cart cart = (Cart) session.getAttribute("cart");
        Integer cartId = (Integer) session.getAttribute("cartId");
        Integer userId = (Integer) session.getAttribute("userId");
        Integer defaultCartId = 1;
        Integer defaultUserId = 1;
        cartId = Optional.ofNullable(cartId).orElse(defaultCartId);
        userId = Optional.ofNullable(userId).orElse(defaultUserId);
        cart.setId(cartId);

        switch (action) {
            case "/cart":
                Integer productDetailId = Integer.parseInt(req.getParameter("id"));
                Integer quantity = Integer.parseInt(req.getParameter("amount"));

                cartService.addToCart(cart, cartId, productDetailId, quantity);

                req.setAttribute("message", "Added to cart successfully");
                cart.setNumberOfItem(cartService.getNumberOfItem(userId, cart));
                cart.setTotalPrice(cartService.getTotalPrice(userId, cart));
                Cart addedCart = cartService.getCart(userId);
                session.setAttribute("cart", addedCart);
                req.getRequestDispatcher("/WEB-INF/view/product/product_detail.jsp").forward(req, resp);
                break;

            case "/cart/update":
                Integer updateProductDetailId = Integer.parseInt(req.getParameter("productDetailId"));
                Integer updateQuantity = Integer.parseInt(req.getParameter("quantity"));
                CartItem cartItem = cartService.getCartItem(updateProductDetailId);
                cartService.updateCartItemWithNewQuantity(cartItem, updateQuantity, updateProductDetailId, cartId);
                break;

            case "/cart/remove":
                Integer id = Integer.parseInt(req.getParameter("id"));
                boolean isRemoved = cartService.deleteCartItem(cart, id);
                if (isRemoved) {
                    cart.setNumberOfItem(cart.getNumberOfItem() - 1);
                    cart.setTotalPrice(cartService.getTotalPrice(userId, cart));
                    session.setAttribute("cart", cart);
                    resp.sendRedirect("/cart");
                }
                break;

            case "/cart/clear":
                boolean isCleared = cartService.deleteAllCartItem(cart);
                if (isCleared) {
                    cart.setNumberOfItem(0);
                    cart.setTotalPrice(0d);
                    session.setAttribute("cart", cart);
                    req.getRequestDispatcher("/WEB-INF/view/cart/clear_cart.jsp").forward(req, resp);
                }
                break;
        }
    }
}