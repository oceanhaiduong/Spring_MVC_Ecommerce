package com.webBH.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.webBH.DAO.BillsDao;
import com.webBH.model.Bill;
import com.webBH.model.BillDetail;
import com.webBH.model.Cart;

public class BillsServiceImpl implements BillsService{

	@Autowired
	private BillsDao billsDao;
	
	@Override
	public int addBills(Bill bills) {
		// TODO Auto-generated method stub
		return billsDao.addBills(bills);
	}

	@Override
	public void addBillsDetail(HashMap<Integer, Cart> cart) {
		// TODO Auto-generated method stub	
		billsDao.addBillsDetail(cart);
	}

	@Override
	public Bill GetIDLastBills() {
		// TODO Auto-generated method stub
		return billsDao.GetIDLastBills();
	}

	@Override
	public int addBillsDetail(BillDetail billDetail) {
		// TODO Auto-generated method stub
		return addBillsDetail(billDetail);
	}

	@Override
	public List<Bill> getAllBill() {
		return billsDao.getAllBill();
	}

	@Override
	public List<BillDetail> getAllBillDetailWithID(int id) {
		// TODO Auto-generated method stub
		return billsDao.getAllBillDetailWithID(id);
	}

}
