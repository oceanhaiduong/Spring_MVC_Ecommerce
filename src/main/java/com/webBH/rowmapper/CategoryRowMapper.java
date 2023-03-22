package com.webBH.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.webBH.model.Category;

public class CategoryRowMapper implements RowMapper<Category>{
	public Category mapRow(ResultSet rs, int row) throws SQLException {
		Category category = new Category();
		category.setId_type(rs.getInt("Id_type"));
		category.setName_type(rs.getString("Name_type"));
		return category;
	}
}
