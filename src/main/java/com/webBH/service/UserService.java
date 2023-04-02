package com.webBH.service;

import java.util.List;

import com.webBH.model.Users;

public interface UserService {
	public Users getUser(int id);
	public Users getUserWithUsername(String username);
	public List<Users> getAllUsers();
	public int SigUp(Users user);
	public int addUsers(Users Users);
	public int updateUsers(Users Users);
	public int deleteUsers(int id);
}
