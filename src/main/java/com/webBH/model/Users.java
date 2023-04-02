package com.webBH.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class Users {
	private int id;
	
	@NotBlank(message = "Không được để trống !")
	@Size(min = 5, message = "Tên đăng nhập phải từ năm ký tự")
	private String username;
	
	@NotBlank(message = "Không được để trống !")
	private String password;
	
	@NotBlank(message = "Không được để trống !")
	private String user_role;
	private int enabled;
	
	@NotBlank(message = "Không được để trống !")
	@Pattern(regexp = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$", message = "Phải nhập đúng định dạng Email !")
	private String email;
	
	@NotBlank(message = "Không được để trống !")
//	@Pattern(regexp = "/(84|0[3|5|7|8|9])+([0-9]{8})\\b/g", message = "Phải nhập đúng định dạng Số điện thoại(+84)")
	private String phone;
	
	private String lastname;
	public Users() {
		
	}
	
	public Users(int id, String username, String password, String user_role, int enabled, String email, String phone, String lastname) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.user_role = user_role;
		this.enabled = enabled;
		this.email = email;
		this.phone = phone;
		this.lastname = lastname;
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

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}		
	
}
