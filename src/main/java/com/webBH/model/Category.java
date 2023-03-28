package com.webBH.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Category {
	private int id_type;
	
	@NotNull(message = "Không được để trống")
	@Size(min = 3, message = "Tên loại sản phẩm phải từ ba ký tự")
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
