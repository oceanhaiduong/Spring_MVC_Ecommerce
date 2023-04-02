package com.webBH.model;

import java.sql.Timestamp;

public class Bill {
	private int id;
	private int amount;
	private int quantity;
	private String customer_Name;
	private String customer_Phone;
	private String customer_Email;
	private String customer_Address;
	private String customer_Note;
	private Timestamp created_at;
	private Timestamp updated_at;

	public Bill() {

	}

	public Bill(int id, int amount, int quantity, String customer_Name, String customer_Phone, String customer_Email,
			String customer_Address, String customer_Note, Timestamp created_at, Timestamp updated_at) {
		super();
		this.id = id;
		this.amount = amount;
		this.quantity = quantity;
		this.customer_Name = customer_Name;
		this.customer_Phone = customer_Phone;
		this.customer_Email = customer_Email;
		this.customer_Address = customer_Address;
		this.customer_Note = customer_Note;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getCustomer_Name() {
		return customer_Name;
	}

	public void setCustomer_Name(String customer_Name) {
		this.customer_Name = customer_Name;
	}

	public String getCustomer_Phone() {
		return customer_Phone;
	}

	public void setCustomer_Phone(String customer_Phone) {
		this.customer_Phone = customer_Phone;
	}

	public String getCustomer_Email() {
		return customer_Email;
	}

	public void setCustomer_Email(String customer_Email) {
		this.customer_Email = customer_Email;
	}

	public String getCustomer_Address() {
		return customer_Address;
	}

	public void setCustomer_Address(String customer_Address) {
		this.customer_Address = customer_Address;
	}

	public String getCustomer_Note() {
		return customer_Note;
	}

	public void setCustomer_Note(String customer_Note) {
		this.customer_Note = customer_Note;
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

	

}
