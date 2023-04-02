package com.webBH.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.webBH.model.Bill;

public class BillsRowMapper implements RowMapper<Bill> {

	public Bill mapRow(ResultSet rs, int row) throws SQLException {
		Bill bill = new Bill();
		bill.setId(rs.getInt("Id"));
		bill.setAmount(rs.getInt("Amount"));
		bill.setQuantity(rs.getInt("Quantity"));
		bill.setCustomer_Address(rs.getString("Customer_Address"));
		bill.setCustomer_Email(rs.getString("Customer_Email"));
		bill.setCustomer_Name(rs.getString("Customer_Name"));
		bill.setCustomer_Note(rs.getString("Customer_Note"));
		bill.setCustomer_Phone(rs.getString("Customer_Phone"));
		bill.setCreated_at(rs.getTimestamp("Created_at"));
		bill.setUpdated_at(rs.getTimestamp("Updated_at"));
		return bill;
	}

}
