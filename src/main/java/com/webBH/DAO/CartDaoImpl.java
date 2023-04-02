package com.webBH.DAO;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.webBH.model.Cart;
import com.webBH.model.Product;
import com.webBH.service.ProductService;

public class CartDaoImpl implements CartDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	ProductService productService;
	
//	ProductDaoImpl productDaoImpl = new ProductDaoImpl();

	@Override
	public HashMap<Integer, Cart> addCart(int id, HashMap<Integer, Cart> cart) {
		Cart itemCart = new Cart();
		Product product = productService.getProduct(id);
		if (product != null && cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanity(itemCart.getQuanity() + 1);
			itemCart.setTotalPrice(itemCart.getQuanity() * itemCart.getProduct().getPrice_product());
		}else {
			itemCart.setProduct(product);
			itemCart.setQuanity(1);
			itemCart.setTotalPrice(product.getPrice_product());
		}
		cart.put(id, itemCart);
		return cart;
	}

	@Override
	public HashMap<Integer, Cart> editCart(int id, Integer Quanity, HashMap<Integer, Cart> cart) {
		if (cart == null) {
			return cart;
		}
		Cart itemCart = new Cart();
		// Kiem tra trong gio hang co san pham theo id nay khong ?
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanity(Quanity);
			itemCart.setTotalPrice(Quanity * itemCart.getProduct().getPrice_product());
		}
		cart.put(id, itemCart);
		return cart;
	}

	@Override
	public HashMap<Integer, Cart> deleteCart(int id, HashMap<Integer, Cart> cart) {
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}

	@Override
	public int TotalQuanity(HashMap<Integer, Cart> cart) {
		int totalQuanity = 0;
		// Lặp qua mỗi 1 item trong cart
		for(Map.Entry<Integer, Cart> itemCart : cart.entrySet())
		{
			// Lấy số lượng của mỗi item
			totalQuanity += itemCart.getValue().getQuanity();
		}
		return totalQuanity;
	}
	
	@Override
	public int TotalPrice(HashMap<Integer, Cart> cart) {
		int totalPrice = 0;
		// Lặp qua mỗi 1 item trong cart
		for(Map.Entry<Integer, Cart> itemCart : cart.entrySet())
		{
			// Lấy số lượng của mỗi item
			totalPrice += itemCart.getValue().getTotalPrice();
		}
		return totalPrice;
	}
}
