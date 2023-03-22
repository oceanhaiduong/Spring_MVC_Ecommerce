package com.webBH.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.transaction.annotation.Transactional;

import com.webBH.model.Product;
import com.webBH.rowmapper.ProductDetailRowMapper;

public class ProductDaoImpl implements ProductDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Transactional
	public Product getProduct(int id) {
		Product productDetail = (Product) jdbcTemplate.queryForObject("select * from products where id = ?",
				new Object[] { id }, new ProductDetailRowMapper());
		return productDetail;
	}

	@Override
	public List<Product> getAllProduct() {
		List<Product> product = (List<Product>) jdbcTemplate.query("select * from products",
				new ProductDetailRowMapper());
		return product;
	}

	@Override
	public int addProduct(Product product) {
		SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
		simpleJdbcInsert.withTableName("products").usingGeneratedKeyColumns("id");
		Map<String, Object> parameters = new HashMap<String, Object>(6);
		parameters.put("title", product.getTitle());
		parameters.put("content", product.getContent());
		parameters.put("img_path", product.getImg_path());
		parameters.put("price_product", product.getPrice_product());
		parameters.put("category_id", product.getCategory_id());
		parameters.put("path", product.getPath());
		Number insertedId = simpleJdbcInsert.executeAndReturnKey(parameters);
		return insertedId.intValue();
	}

	@Override
	public int updateProduct(Product product) {
		String sql = "update products set title = ?, content = ?,price_product = ?, category_id = ?, img_path = ? where id = ?";
		int resp = jdbcTemplate.update(sql, new Object[] 
				{ 
				  product.getTitle(), 
				  product.getContent(),	
				  product.getPrice_product(),
				  product.getCategory_id(),
				  product.getImg_path(),
				  product.getId(), 
				});
		return resp;
	}

	@Override
	public int updateProductWithOutImg(Product product) {
		String sql = "update products set title = ?, content = ?,price_product = ?, category_id = ? where id = ?";
		int resp = jdbcTemplate.update(sql, new Object[] 
				{ 
				  product.getTitle(), 
				  product.getContent(),	
				  product.getPrice_product(),
				  product.getCategory_id(),
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
