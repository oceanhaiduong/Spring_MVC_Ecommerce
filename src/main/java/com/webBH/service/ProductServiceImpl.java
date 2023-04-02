package com.webBH.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.webBH.DAO.ProductDao;
import com.webBH.model.Product;

public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	public Product getProduct(int id) {
		return productDao.getProduct(id);
	}

	public List<Product> getAllProduct() {
		return productDao.getAllProduct();
	}
	
	public List<Product> getAllProductPopular() {
		return productDao.getAllProductPopular();
	}
	
	public List<Product> getAllProductNew() {
		return productDao.getAllProductNew();
	}
	
	public List<Product> getAllProductByCategoryID(int id){
		return productDao.getAllProductByCategoryID(id);
	}
	
	public List<Product> getAllProductOfCategoryWithLimit(int id, int start, int end){
		return productDao.getAllProductOfCategoryWithLimit(id, start, end);
	}
	
	public List<Product> getAllProductWithLimit(int start, int end){
		return productDao.getAllProductWithLimit(start, end);
	}

	@Override
	public int addProduct(Product product) {
		// TODO Auto-generated method stub
		return productDao.addProduct(product);
	}
	
	@Override
	public int updateProductWithOutImg(Product product) {
		// TODO Auto-generated method stub
		return productDao.updateProductWithOutImg(product);
	}

	@Override
	public int updateProduct(Product product) {
		// TODO Auto-generated method stub
		return productDao.updateProduct(product);
	}

	@Override
	public int deleteProduct(int id) {
		// TODO Auto-generated method stub
		return productDao.deleteProduct(id);
	}

	public ProductDao getProductDao() {
		return productDao;
	}

}
