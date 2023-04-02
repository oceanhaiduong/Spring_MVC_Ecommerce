package com.webBH.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;

import com.webBH.DAO.CartDao;
import com.webBH.model.Cart;

public class CartServiceImpl implements CartService{

	@Autowired
	CartDao cartDao;
	
	@Override
	public HashMap<Integer, Cart> addCart(int id, HashMap<Integer, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.addCart(id, cart);
	}

	@Override
	public HashMap<Integer, Cart> editCart(int id, Integer Quanity, HashMap<Integer, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.editCart(id, Quanity, cart);
	}

	@Override
	public HashMap<Integer, Cart> deleteCart(int id, HashMap<Integer, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.deleteCart(id, cart);
	}

	@Override
	public int TotalQuanity(HashMap<Integer, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.TotalQuanity(cart);
	}

	@Override
	public int TotalPrice(HashMap<Integer, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.TotalPrice(cart);
	}

}
