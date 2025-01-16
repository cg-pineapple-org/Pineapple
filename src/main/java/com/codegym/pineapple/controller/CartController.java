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
        switch (action) {
            case "/cart":
                HttpSession session = req.getSession(false);
                Cart cart = (Cart) session.getAttribute("cart");
                req.getRequestDispatcher("/WEB-INF/view/cart/cart1.jsp").forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        switch (action) {
            case "/cart/remove":
//                Integer id = Integer.parseInt(req.getParameter("id"));
//                boolean isDeleted = cartService.deleteCartItem(id);
//                if(isDeleted){
//                    req.setAttribute("message", "Deleted successfully");
//                    req.getRequestDispatcher("/WEB-INF/view/cart/delete.jsp").forward(req, resp);
//                }else{
//                    req.setAttribute("message", "Delete failed");
//                }
//                resp.sendRedirect("/cart");
//                break;

                HttpSession session = req.getSession();
                Cart cart = (Cart) session.getAttribute("cart");
                Integer id = Integer.parseInt(req.getParameter("id"));
                cartService.deleteCartItem(cart, id);
                session.setAttribute("cart",cart);
//                resp.sendRedirect("cart1.jsp");
                req.getRequestDispatcher("/WEB-INF/view/cart/cart1.jsp").forward(req, resp);
                break;
        }
    }
}