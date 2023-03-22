package com.webBH.service;

import java.util.List;

import com.webBH.model.Product;

public interface ProductService {
	public Product getProduct(int id);
	public List<Product> getAllProduct();
	public int addProduct(Product product);
	public int updateProduct(Product product);
	public int updateProductWithOutImg(Product product);
	public int deleteProduct(int id);
}
