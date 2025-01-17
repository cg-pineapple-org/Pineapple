package com.codegym.pineapple.service;

import com.codegym.pineapple.dao.CategoryDao;
import com.codegym.pineapple.model.Category;

import java.util.Optional;

public class CategoryService {
    private final CategoryDao categoryDao;

    public CategoryService(){
        this.categoryDao = new CategoryDao();
    }

    private static CategoryService categoryService = null;
    public static CategoryService getInstance(){
        if(!Optional.ofNullable(categoryService).isPresent()){
            categoryService = new CategoryService();
        }
        return categoryService;
    }

    public Category getCategory(Integer id){

        return categoryDao.getNameCategoryById(id);
    }
}
