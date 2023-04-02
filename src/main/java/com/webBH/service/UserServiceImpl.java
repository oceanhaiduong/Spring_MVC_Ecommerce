package com.webBH.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.webBH.DAO.UserDao;
import com.webBH.model.Users;

public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	
	public Users getUsers(int id) {
		return userDao.getUser(id);
	}	
	public List<Users> getAllUsers() {
		return userDao.getAllUser();
	}
	@Override
	public int addUsers(Users user) {
		return userDao.addUser(user);
	}
	@Override
	public int updateUsers(Users user) {
		return userDao.updateUser(user);
	}
	@Override
	public int deleteUsers(int id) {
		return userDao.deleteUser(id);
	}
	public UserDao getUserDao() {
		return userDao;
	}

}
