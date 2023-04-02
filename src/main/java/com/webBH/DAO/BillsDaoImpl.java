package com.webBH.DAO;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;

import com.webBH.model.Bill;
import com.webBH.model.BillDetail;
import com.webBH.model.Cart;
import com.webBH.rowmapper.BillsDetailRowMapper;
import com.webBH.rowmapper.BillsRowMapper;

public class BillsDaoImpl implements BillsDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public int addBills(Bill bills) {
		SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
		simpleJdbcInsert.withTableName("bills_order").usingGeneratedKeyColumns("id");
		Map<String, Object> parameters = new HashMap<String, Object>(9);
		parameters.put("amount", bills.getAmount());
		parameters.put("quantity", bills.getQuantity());
		parameters.put("customer_Address", bills.getCustomer_Address());
		parameters.put("customer_Email", bills.getCustomer_Email());
		parameters.put("customer_Name", bills.getCustomer_Name());
		parameters.put("customer_Phone", bills.getCustomer_Phone());
		parameters.put("customer_Note", bills.getCustomer_Note());
		parameters.put("created_at", bills.getCreated_at());
		parameters.put("updated_at", bills.getUpdated_at());
		Number insertedId = simpleJdbcInsert.executeAndReturnKey(parameters);
		return insertedId.intValue();
	}

	@Override
	public List<Bill> getAllBill() {
		List<Bill> bills = (List<Bill>) jdbcTemplate.query("select * from bills_order", new BillsRowMapper());
		return bills;
	}

	@Override
	public List<BillDetail> getAllBillDetailWithID(int id) {
		List<BillDetail> bills = (List<BillDetail>) jdbcTemplate.query(
				"select pro.id as id, pro.title as title, bd.totalQuanity, bd.totalPrice, bd.status, bd.id_product, bd.id_bill, bd.created_at, bd.updated_at from bills_detail as bd INNER JOIN products as pro where bd.id_product = pro.id and id_bill = ?",
				new Object[] { id }, new BillsDetailRowMapper());
		return bills;
	}

	@Override
	public Bill GetIDLastBills() {
		Bill bill = (Bill) jdbcTemplate.queryForObject(
				"SELECT * FROM bills_order WHERE id = (SELECT MAX(id) FROM bills_order)", new Object[] {},
				new BillsRowMapper());
		return bill;
	}

	@Override
	public int addBillsDetail(BillDetail billDetail) {
		SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
		simpleJdbcInsert.withTableName("bills_detail").usingGeneratedKeyColumns("id");
		Map<String, Object> parameters = new HashMap<String, Object>(6);
		parameters.put("totalPrice", billDetail.getTotalPrice());
		parameters.put("totalQuanity", billDetail.getTotalQuanity());
		parameters.put("id_bill", billDetail.getId_bill());
		parameters.put("id_product", billDetail.getId_product());
		parameters.put("created_at", billDetail.getCreated_at());
		parameters.put("updated_at", billDetail.getUpdated_at());
		Number insertedId = simpleJdbcInsert.executeAndReturnKey(parameters);
		return insertedId.intValue();
	}

	@Override
	public void addBillsDetail(HashMap<Integer, Cart> cart) {
		Bill idBills = GetIDLastBills();
		Date date = new Date();
		Timestamp ts = new Timestamp(date.getTime());
		for (Map.Entry<Integer, Cart> itemCart : cart.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bill(idBills.getId());
			billDetail.setId_product(itemCart.getValue().getProduct().getId());
			billDetail.setTotalQuanity(itemCart.getValue().getQuanity());
			billDetail.setTotalPrice(itemCart.getValue().getTotalPrice());
			billDetail.setCreated_at(ts);
			billDetail.setUpdated_at(ts);
			addBillsDetail(billDetail);
		}

	}

}
