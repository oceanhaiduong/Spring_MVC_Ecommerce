package com.webBH.DAO;

import java.util.List;

import com.webBH.model.Product;

public interface ProductDao {
	public Product getProduct(int id);
	public List<Product> getAllProduct();
	public int addProduct(Product product);
	public int updateProduct(Product product);
	public int updateProductWithOutImg(Product product);
	public int deleteProduct(int id);
}
