package com.webBH.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.webBH.model.Product;


public class ProductDetailRowMapper implements RowMapper<Product>{
	public Product mapRow(ResultSet rs, int row) throws SQLException {
		Product productDetail = new Product();
		productDetail.setId(rs.getInt("Id"));
		productDetail.setTitle(rs.getString("Title"));
		productDetail.setContent(rs.getString("Content"));
		productDetail.setImg_path(rs.getString("Img_path"));
		productDetail.setPath(rs.getString("Path"));
		productDetail.setPrice_product(rs.getInt("Price_product"));
		productDetail.setCategory_id(rs.getInt("Category_id"));
		return productDetail;
	}
}
