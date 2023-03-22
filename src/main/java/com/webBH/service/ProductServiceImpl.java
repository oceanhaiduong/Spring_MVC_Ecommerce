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
