package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.TransactionDao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public class TransactionService {
    private static TransactionService transactionService = null;

    private TransactionService(){}

    public static TransactionService getInstance(){
        if(!Optional.ofNullable(transactionService).isPresent()){
            transactionService = new TransactionService();
        }
        return transactionService;
    }

    public List<Map<String, Object>> getTransactionByUserId(Integer pageSize, Integer page, Integer userId){
        return TransactionDao.getInstance().findTransactionByUserId(pageSize, page, userId);
    }
}
