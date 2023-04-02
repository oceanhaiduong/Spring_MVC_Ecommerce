package com.webBH.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.webBH.model.Users;

public class UserRowMapper implements RowMapper<Users> {
	public Users mapRow(ResultSet rs, int row) throws SQLException {
		Users Users = new Users();
		Users.setId(rs.getInt("Id"));
		Users.setUsername(rs.getString("Username"));
		Users.setPassword(rs.getString("Password"));
		Users.setUser_role(rs.getString("User_role"));
		Users.setEnabled(rs.getInt("Enabled"));
		return Users;
	}
}
