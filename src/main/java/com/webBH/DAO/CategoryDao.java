package com.webBH.DAO;

import java.util.List;

import com.webBH.model.Category;

public interface CategoryDao {
	public Category getCategory(int id_type);
	public List<Category> getAllCategory();
	public int addCategory(Category category);
	public int updateCategory(Category category);
	public int deleteCategory(int id_type);
}
