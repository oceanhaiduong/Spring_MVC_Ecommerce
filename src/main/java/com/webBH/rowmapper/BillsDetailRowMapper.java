package com.webBH.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.webBH.model.BillDetail;

public class BillsDetailRowMapper implements RowMapper<BillDetail> {

	@Override
	public BillDetail mapRow(ResultSet rs, int row) throws SQLException {
		BillDetail billDetail = new BillDetail();
		billDetail.setId(rs.getInt("Id"));
		billDetail.setTotalPrice(rs.getInt("TotalPrice"));
		billDetail.setTotalQuanity(rs.getInt("TotalQuanity"));
		billDetail.setStatus(rs.getBoolean("Status"));
		billDetail.setId_bill(rs.getInt("Id_bill"));
		billDetail.setId_product(rs.getInt("Id_product"));
		billDetail.setCreated_at(rs.getTimestamp("Created_at"));
		billDetail.setUpdated_at(rs.getTimestamp("Updated_at"));
		return null;
	}

}
