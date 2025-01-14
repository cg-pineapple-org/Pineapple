package com.codegym.pineapple.controller;

import com.codegym.pineapple.model.Account;
import com.codegym.pineapple.model.User;
import com.codegym.pineapple.service.AuthService;
import com.codegym.pineapple.utility.EmailMessage;
import com.codegym.pineapple.utility.EmailUtility;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="ForgetPasswordCTL", urlPatterns = {"/auth/forgot-password"} )
public class ForgetPasswordCTL extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ForgetPasswordCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/auth/forgotPassword.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        AuthService authService = new AuthService();

        String email = request.getParameter("email").trim();
        String username = request.getParameter("username").trim();
        EmailMessage emailbean = new EmailMessage();
        Account account = authService.getUserByUsername(username);
        emailbean.setTo(email);
        emailbean.setMessage("Hii "+username+ " Your Password is: "+account.getPassword());
        try {
            EmailUtility.sendMail(emailbean);
            request.setAttribute("sucessMessage", "Mail has been sent successfully..");
        } catch (Exception e) {
            request.setAttribute("errorMessage", "Something went wrong");
        }
        request.getRequestDispatcher("/WEB-INF/view/auth/forgotPassword.jsp").forward(request, response);
    }

}
