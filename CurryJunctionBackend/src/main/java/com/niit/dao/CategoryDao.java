package com.niit.dao;

import java.util.List;

import com.niit.model.Category;

public interface CategoryDao 
{
public void insertOrUpdateCategory(Category category);
public Category getCategory (int cat_id);
public List<Category> getCategoryDetails();
public void deleteCategory(CategoryDao category);
public int getCategoryByPid(int pro_id);
public List<Category> retrieve();
public void deleteCat(int cat_id);
}
