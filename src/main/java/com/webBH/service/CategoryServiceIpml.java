package com.webBH.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.webBH.DAO.CategoryDao;
import com.webBH.model.Category;

public class CategoryServiceIpml implements CategoryService{

	@Autowired
	private CategoryDao categoryDao;
	
	
	public Category getCategory(int id_type) {
		return categoryDao.getCategory(id_type);
	}


	public List<Category> getAllCategory() {
		return categoryDao.getAllCategory();
	}

	@Override
	public int addCategory(Category category) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateCategory(Category category) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCategory(int id_type) {
		// TODO Auto-generated method stub
		return 0;
	}

}
