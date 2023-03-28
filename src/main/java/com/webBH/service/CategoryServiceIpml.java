package com.webBH.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.webBH.DAO.CategoryDao;
import com.webBH.model.Category;

public class CategoryServiceIpml implements CategoryService{

	@Autowired
	private CategoryDao categoryDao;
	
	
	public Category getCategory(int id) {
		return categoryDao.getCategory(id);
	}


	public List<Category> getAllCategory() {
		return categoryDao.getAllCategory();
	}

	@Override
	public int addCategory(Category category) {
		return categoryDao.addCategory(category);
	}

	@Override
	public int updateCategory(Category category) {
		return categoryDao.updateCategory(category);
	}

	@Override
	public int deleteCategory(int id) {
		return categoryDao.deleteCategory(id);
	}

}
