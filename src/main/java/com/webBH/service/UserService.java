package com.webBH.service;

import java.util.List;

import com.webBH.model.Users;

public interface UserService {
	public Users getUsers(int id);
	public List<Users> getAllUsers();
	public int addUsers(Users Users);
	public int updateUsers(Users Users);
	public int deleteUsers(int id);
}
