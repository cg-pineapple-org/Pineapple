package com.codegym.pineapple.controller;

import com.codegym.pineapple.service.TransactionService;

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

@WebServlet(name = "TransactionController", urlPatterns = {"/transaction"})
public class TransactionController extends HttpServlet {
    private final Integer DEFAULT_PAGE_SIZE = 1;
    private final Integer DEFAULT_PAGE = 1;
    private final Integer MIN_INVALID_PAGE = 0;
    private final Integer MIN_PAGE_SIZE = 1;
    private final Integer MAX_PAGE_SIZE = 3;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        HttpSession httpSession;
        Integer pageSize;
        Integer page;

        switch (action){
            case "/transaction":
                String pageSizeStr = req.getParameter("page_size");
                String pageStr = req.getParameter("page");

                boolean isPageSizePresent = !Optional.ofNullable(pageSizeStr).isPresent();
                boolean isPagePresent = !Optional.ofNullable(pageStr).isPresent();

                if (isPageSizePresent || isPagePresent){
                    resp.sendRedirect("/transaction?page_size=" + DEFAULT_PAGE_SIZE + "&page=" + DEFAULT_PAGE);
                    return;
                }

                pageSize = Integer.parseInt(pageSizeStr);
                if (pageSize > MAX_PAGE_SIZE) pageSize = MAX_PAGE_SIZE;
                else if (pageSize < MIN_PAGE_SIZE) pageSize = MIN_PAGE_SIZE;
                page = Integer.parseInt(pageStr);

                if (page <= MIN_INVALID_PAGE){
                    resp.sendRedirect("/transaction?page_size=" + pageSize + "&page=" + DEFAULT_PAGE);
                }
                else{
                    httpSession = req.getSession(false);
                    Object userIdObj = httpSession.getAttribute("userId");

                    if (!Optional.ofNullable(userIdObj).isPresent()){
                        resp.sendRedirect("/");
                        return;
                    }

                    Integer userId = Integer.valueOf(String.valueOf(userIdObj));
                    List<Map<String, Object>> combinedTransactionList = TransactionService.getInstance().getTransactionByUserId(pageSize, page, userId);

                    if (!Optional.ofNullable(combinedTransactionList).isPresent()) {
                        httpSession = req.getSession(false);
                        String currentPage = String.valueOf(httpSession.getAttribute("currentTransactionPage"));
                        resp.sendRedirect("/transaction?page_size=" + pageSize + "&page=" + currentPage);
                    }
                    else {
                        httpSession.setAttribute("currentTransactionPage", page);
                        httpSession.setAttribute("currentTransactionPageSize", pageSize);

                        req.setAttribute("combinedTransactionList", combinedTransactionList);
                        req.setAttribute("page_size", pageSize);
                        req.setAttribute("page", page);
                        req.getRequestDispatcher("/WEB-INF/view/transaction/transaction_list.jsp").forward(req, resp);
                    }
                }
                break;
        }
    }
}
