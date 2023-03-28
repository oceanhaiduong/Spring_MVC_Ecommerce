package com.webBH.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.transaction.annotation.Transactional;

import com.webBH.model.Product;
import com.webBH.rowmapper.ProductRowMapper;

public class ProductDaoImpl implements ProductDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Transactional
	public Product getProduct(int id) {
		Product product = (Product) jdbcTemplate.queryForObject("select * from products where id = ?",
				new Object[] { id }, new ProductRowMapper());
		return product;
	}

	@Override
	public List<Product> getAllProduct() {
		List<Product> product = (List<Product>) jdbcTemplate.query("select * from products",
				new ProductRowMapper());
		return product;
	}
	
	@Override
	public List<Product> getAllProductPopular() {
		List<Product> product = (List<Product>) jdbcTemplate.query("select * from products limit 4",
				new ProductRowMapper());
		return product;
	}
	
	@Override
	public List<Product> getAllProductNew() {
		List<Product> product = (List<Product>) jdbcTemplate.query("select * from products ORDER BY created_at DESC LIMIT 4",
				new ProductRowMapper());
		return product;
	}
	

	@Override
	public int addProduct(Product product) {
		SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
		simpleJdbcInsert.withTableName("products").usingGeneratedKeyColumns("id");
		Map<String, Object> parameters = new HashMap<String, Object>(8);
		parameters.put("title", product.getTitle());
		parameters.put("content", product.getContent());
		parameters.put("img_path", product.getImg_path());
		parameters.put("created_at", product.getCreated_at());
		parameters.put("updated_at", product.getUpdated_at());
		parameters.put("path", product.getPath());
		parameters.put("price_product", product.getPrice_product());
		parameters.put("category_id", product.getCategory_id());
		Number insertedId = simpleJdbcInsert.executeAndReturnKey(parameters);
		return insertedId.intValue();
	}

	@Override
	public int updateProduct(Product product) {
		String sql = "update products set title = ?, content = ?,price_product = ?, category_id = ?, img_path = ?, updated_at = ? where id = ?";
		int resp = jdbcTemplate.update(sql, new Object[] 
				{ 
				  product.getTitle(), 
				  product.getContent(),	
				  product.getPrice_product(),
				  product.getCategory_id(),
				  product.getImg_path(),
				  product.getUpdated_at(),
				  product.getId(), 
				});
		return resp;
	}

	@Override
	public int updateProductWithOutImg(Product product) {
		String sql = "update products set title = ?, content = ?,price_product = ?, category_id = ?, updated_at = ? where id = ?";
		int resp = jdbcTemplate.update(sql, new Object[] 
				{ 
				  product.getTitle(), 
				  product.getContent(),	
				  product.getPrice_product(),
				  product.getCategory_id(),
				  product.getUpdated_at(),
				  product.getId(), 
				});
		return resp;
	}
	
	@Override
	public int deleteProduct(int id) {
		int resp = jdbcTemplate.update("delete from products where id = ?", id);
		return resp;
	}

}
