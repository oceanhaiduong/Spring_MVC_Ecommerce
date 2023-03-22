package com.webBH.model;

public class Category {
	private int id_type;
	private String name_type;
	
	public Category() {
		
	}
	
	public Category(int id_type, String name_type) {
		super();
		this.id_type = id_type;
		this.name_type = name_type;
	}

	public int getId_type() {
		return id_type;
	}

	public void setId_type(int id_type) {
		this.id_type = id_type;
	}

	public String getName_type() {
		return name_type;
	}

	public void setName_type(String name_type) {
		this.name_type = name_type;
	}
	
	
}
