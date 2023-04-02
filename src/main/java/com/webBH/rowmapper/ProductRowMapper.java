package com.webBH.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.webBH.model.Product;


public class ProductRowMapper implements RowMapper<Product>{
	public Product mapRow(ResultSet rs, int row) throws SQLException {
		Product product = new Product();
		product.setId(rs.getInt("Id"));
		product.setTitle(rs.getString("Title"));
		product.setContent(rs.getString("Content"));
		product.setImg_path(rs.getString("Img_path"));
		product.setCreated_at(rs.getTimestamp("Created_at"));
		product.setUpdated_at(rs.getTimestamp("Updated_at"));
		product.setPath(rs.getString("Path"));
		product.setPrice_product(rs.getInt("Price_product"));
		product.setCategory_id(rs.getInt("Category_id"));
		return product;
	}
}
