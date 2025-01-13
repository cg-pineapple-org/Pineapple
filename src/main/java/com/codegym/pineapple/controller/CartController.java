package com.codegym.pineapple.controller;

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

@WebServlet(name = "cartController", urlPatterns = {"/cart", "/cart/add"})
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
//                Integer id = Integer.parseInt(req.getParameter("id"));
//                HttpSession session = req.getSession();
//                session.setAttribute("cart", cartService.getCart(1));

                req.setAttribute("cart", cartService.getCart(1));
                req.getRequestDispatcher("/WEB-INF/view/cart/cart.jsp").forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        switch (action) {
//            case "cart/add":
//                Integer cartId = Integer.parseInt(req.getParameter("cart_id"));
//                Integer productDetailId = Integer.parseInt(req.getParameter("product_detail_id"));
//                Integer quantity = Integer.parseInt(req.getParameter("quantity"));
//
//                CartItem cartItem = new CartItem(cartId, productDetailId, quantity, subTotal);
//                boolean isAdded = cartService.addToCart(cartItem);
//                if(isAdded){
//                    req.setAttribute("message", "Sản phẩm đã được thêm vào giỏ hàng");
//                }else{
//                    req.setAttribute("message", "Không đủ số lượng sản phẩm trong kho");
//                }
//                resp.sendRedirect(resp.getHeader("referer"));
//                break;
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        switch (action) {
            case "/cart/delete":
                Integer id = Integer.parseInt(req.getParameter("id"));
                boolean isDeleted = cartService.deleteCartItem(id);
                if(isDeleted){
                    req.setAttribute("message", "Deleted successfully");
                    req.getRequestDispatcher("/WEB-INF/view/cart/delete.jsp").forward(req, resp);
                }else{
                    req.setAttribute("message", "Delete failed");
                }
                resp.sendRedirect("/cart");
                break;

        }
    }
}