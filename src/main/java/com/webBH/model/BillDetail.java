package com.webBH.model;

import java.sql.Timestamp;

public class BillDetail {
	private int id;
	private int totalPrice;
	private int totalQuanity;
	private Boolean status;
	private int id_product;
	private int id_bill;
	private Timestamp created_at;
	private Timestamp updated_at;

	public BillDetail() {

	}

	public BillDetail(int id, int totalQuanity, int totalPrice, Boolean status, int id_product, int id_bill, Timestamp created_at,
			Timestamp updated_at) {
		super();
		this.id = id;
		this.totalQuanity = totalQuanity;
		this.totalPrice = totalPrice;
		this.status = status;
		this.id_product = id_product;
		this.id_bill = id_bill;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTotalQuanity() {
		return totalQuanity;
	}

	public void setTotalQuanity(int totalQuanity) {
		this.totalQuanity = totalQuanity;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
		this.id_product = id_product;
	}

	public int getId_bill() {
		return id_bill;
	}

	public void setId_bill(int id_bill) {
		this.id_bill = id_bill;
	}

	public Timestamp getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}

	public Timestamp getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Timestamp updated_at) {
		this.updated_at = updated_at;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	

}
