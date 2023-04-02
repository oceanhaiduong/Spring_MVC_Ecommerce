package com.webBH.service;

import java.util.HashMap;
import java.util.List;

import com.webBH.model.Bill;
import com.webBH.model.BillDetail;
import com.webBH.model.Cart;

public interface BillsService {
	public int addBills(Bill bills);

	public List<Bill> getAllBill();
	
	public List<BillDetail> getAllBillDetailWithID(int id);
	
	public Bill GetIDLastBills();

	public int addBillsDetail(BillDetail billDetail);

	public void addBillsDetail(HashMap<Integer, Cart> cart);
}
