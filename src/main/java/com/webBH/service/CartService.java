package com.webBH.service;

import java.util.HashMap;

import com.webBH.model.Cart;

public interface CartService {
	public HashMap<Integer, Cart> addCart(int id, HashMap<Integer, Cart> cart);
	public HashMap<Integer, Cart> editCart(int id,Integer Quanity, HashMap<Integer, Cart> cart);
	public HashMap<Integer, Cart> deleteCart(int id, HashMap<Integer, Cart> cart);
	public int TotalQuanity(HashMap<Integer, Cart> cart);
	public int TotalPrice(HashMap<Integer, Cart> cart);
	
}
