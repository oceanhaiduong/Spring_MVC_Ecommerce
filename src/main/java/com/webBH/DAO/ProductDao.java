package com.webBH.DAO;

import java.util.List;

import com.webBH.model.Product;

public interface ProductDao {
	public Product getProduct(int id);
	public List<Product> getAllProduct();
	public List<Product> getAllProductByCategoryID(int id);
	public List<Product> getAllProductOfCategoryWithLimit(int id, int start, int end);
	public List<Product> getAllProductWithLimit(int start, int end);
	public List<Product> getAllProductPopular();
	public List<Product> getAllProductNew();
	public int addProduct(Product product);
	public int updateProduct(Product product);
	public int updateProductWithOutImg(Product product);
	public int deleteProduct(int id);
}
