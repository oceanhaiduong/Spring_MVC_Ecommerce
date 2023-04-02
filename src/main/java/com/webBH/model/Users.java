package com.webBH.model;

//import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

public class Users {
	private int id;
	@NotBlank(message = "Không được để trống !")
	private String username;
	@NotBlank(message = "Không được để trống !")
	private String password;
	private String user_role;
	private int enabled;
	public Users() {
		
	}
	public Users(int id, String username, String password, String user_role, int enabled) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.user_role = user_role;
		this.enabled = enabled;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	
		
	
}
