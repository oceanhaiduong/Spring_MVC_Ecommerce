package com.webBH.service;

import java.util.List;

import com.webBH.model.Category;

public interface CategoryService {
	public Category getCategory(int id);
	public List<Category> getAllCategory();
	public int addCategory(Category category);
	public int updateCategory(Category category);
	public int deleteCategory(int id);
}
