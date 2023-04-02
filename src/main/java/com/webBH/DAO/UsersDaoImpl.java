package com.webBH.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.transaction.annotation.Transactional;

import com.webBH.model.Users;
import com.webBH.rowmapper.UserRowMapper;


public class UsersDaoImpl implements UserDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Transactional
	public Users getUser(int id) {
		Users Users = (Users) jdbcTemplate.queryForObject("select * from user_s where id = ?",
				new Object[] { id }, new UserRowMapper());
		return Users;
	}
	
	@Transactional
	public Users getUserWithUsername(String username) {
		Users Users = (Users) jdbcTemplate.queryForObject("SELECT * FROM `user_s` WHERE `username` = ?",
				new Object[] { username }, new UserRowMapper());
		return Users;
	}
	
	@Override
	public List<Users> getAllUser() {
		List<Users> Users = (List<Users>) jdbcTemplate.query("select * from user_s",
				new UserRowMapper());
		return Users;
	}
	
	@Override
	public int SigUp(Users user) {
		SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
		simpleJdbcInsert.withTableName("user_s").usingGeneratedKeyColumns("id");
		Map<String, Object> parameters = new HashMap<String, Object>(4);
		parameters.put("username", user.getUsername());
		parameters.put("password", user.getPassword());
		parameters.put("user_role", user.getUser_role());
		parameters.put("enabled", user.getEnabled());
		Number insertedId = simpleJdbcInsert.executeAndReturnKey(parameters);
		return insertedId.intValue();
	}
	
	@Override
	public int addUser(Users user) {
		SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
		simpleJdbcInsert.withTableName("user_s").usingGeneratedKeyColumns("id");
		Map<String, Object> parameters = new HashMap<String, Object>(6);
		parameters.put("username", user.getUsername());
		parameters.put("password", user.getPassword());
		parameters.put("user_role", user.getUser_role());
		parameters.put("enabled", user.getEnabled());
		parameters.put("email", user.getEmail());
		parameters.put("phone", user.getPhone());
		parameters.put("lastname", user.getLastname());
		Number insertedId = simpleJdbcInsert.executeAndReturnKey(parameters);
		return insertedId.intValue();
	}
	
	
	@Override
	public int updateUser(Users user) {
		String sql = "update user_s set user_role = ?, email = ?, phone = ?, lastname = ?  where id = ?";
		int resp = jdbcTemplate.update(sql, new Object[] 
				{ 
					user.getUser_role(),
					user.getEmail(),
					user.getPhone(),
					user.getLastname(),
					user.getId(),
				});
		return resp;
	}
	@Override
	public int deleteUser(int id) {
		int resp = jdbcTemplate.update("delete from user_s where id = ?", id);
		return resp;
	}
}
