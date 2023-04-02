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
		Users Users = (Users) jdbcTemplate.queryForObject("select * from user where id = ?",
				new Object[] { id }, new UserRowMapper());
		return Users;
	}
	@Override
	public List<Users> getAllUser() {
		List<Users> Users = (List<Users>) jdbcTemplate.query("select * from user",
				new UserRowMapper());
		return Users;
	}
	@Override
	public int addUser(Users user) {
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
	public int updateUser(Users user) {
		
		return 0;
	}
	@Override
	public int deleteUser(int id) {
	
		return 0;
	}
}
