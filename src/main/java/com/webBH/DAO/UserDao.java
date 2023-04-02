package com.webBH.DAO;

import java.util.List;

import com.webBH.model.Users;

public interface UserDao {
	public Users getUser(int id);
	public Users getUserWithUsername(String username);
	public List<Users> getAllUser();
	public int SigUp(Users user);
	public int addUser(Users user);
	public int updateUser(Users user);
	public int deleteUser(int id);
}