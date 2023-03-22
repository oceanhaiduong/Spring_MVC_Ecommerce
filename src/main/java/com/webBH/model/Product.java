package com.webBH.model;


public class Product {
	private int id;
	private String title;
	private String content;
	private String path;
	private String img_path;
	private Integer price_product;
	private Integer category_id;
	
	
	public Product() {
		
	}

	public Product(int id, String title, String content, String path, String img_path, Integer price_product,
			Integer category_id) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.path = path;
		this.img_path = img_path;
		this.price_product = price_product;
		this.category_id = category_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getImg_path() {
		return img_path;
	}

	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}

	public Integer getPrice_product() {
		return price_product;
	}

	public void setPrice_product(Integer price_product) {
		this.price_product = price_product;
	}

	public Integer getCategory_id() {
		return category_id;
	}

	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
		
	
}
