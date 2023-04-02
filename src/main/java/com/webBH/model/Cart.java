package com.webBH.model;

public class Cart {
	private int id;
	private Integer Quanity;
	private Integer TotalPrice;
	private Product product;
	
	public Cart() {
		
	}

	public Cart(int id, Integer quanity, Integer totalPrice, Product product) {
		super();
		this.id = id;
		Quanity = quanity;
		TotalPrice = totalPrice;
		this.product = product;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getQuanity() {
		return Quanity;
	}

	public void setQuanity(Integer quanity) {
		Quanity = quanity;
	}

	public Integer getTotalPrice() {
		return TotalPrice;
	}

	public void setTotalPrice(Integer totalPrice) {
		TotalPrice = totalPrice;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	
}
