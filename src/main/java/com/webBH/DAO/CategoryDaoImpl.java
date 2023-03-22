package com.webBH.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.webBH.model.Category;
import com.webBH.rowmapper.CategoryRowMapper;

public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Transactional
	public Category getCategory(int id_type) {
		Category category = (Category) jdbcTemplate.queryForObject("select * from type_product where id_type = ?",
				new Object[] { id_type }, new CategoryRowMapper());
		return category;
	}

	@Override
	public List<Category> getAllCategory() {
		List<Category> category = (List<Category>) jdbcTemplate.query("select * from type_product",
				new CategoryRowMapper());	
		return category;
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
