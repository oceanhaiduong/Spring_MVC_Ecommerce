package com.webBH.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.transaction.annotation.Transactional;

import com.webBH.model.Category;
import com.webBH.rowmapper.CategoryRowMapper;

public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Transactional
	public Category getCategory(int id) {
		Category category = (Category) jdbcTemplate.queryForObject("select * from type_product where id_type = ?",
				new Object[] { id }, new CategoryRowMapper());
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
		SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
		simpleJdbcInsert.withTableName("type_product").usingGeneratedKeyColumns("id");
		Map<String, Object> parameters = new HashMap<String, Object>(1);
		parameters.put("name_type", category.getName_type());
		Number insertedId = simpleJdbcInsert.executeAndReturnKey(parameters);
		return insertedId.intValue();
	}

	@Override
	public int updateCategory(Category category) {
		String sql = "update type_product set name_type = ? where id_type = ?";
		int resp = jdbcTemplate.update(sql, new Object[] 
				{ 
					category.getName_type(),
					category.getId_type(),
				});
		return resp;
	}

	@Override
	public int deleteCategory(int id) {
		int resp = jdbcTemplate.update("delete from type_product where id_type = ?", id);
		return resp;
	}

}
