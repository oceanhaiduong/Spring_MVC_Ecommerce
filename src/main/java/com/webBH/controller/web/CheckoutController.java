package com.webBH.controller.web;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.webBH.model.Bill;
import com.webBH.model.Cart;
import com.webBH.model.Users;

@Controller
public class CheckoutController extends BaseController {
	@RequestMapping(value = { "/trang-chu/checkout" }, method = RequestMethod.GET)
	public ModelAndView checkoutPage() {
		map = new HashMap<>();

		Bill bill = new Bill();

		Date date = new Date();
		Timestamp ts = new Timestamp(date.getTime());

		Users loginInfo = (Users) session.getAttribute("userAuthInfo");
		if (loginInfo != null) {
			bill.setCustomer_Email(loginInfo.getEmail());
			bill.setCustomer_Phone(loginInfo.getPhone());
			bill.setCustomer_Name(loginInfo.getLastname());
			bill.setCreated_at(ts);
			bill.setUpdated_at(ts);
		}

		map.put("Cart", session.getAttribute("Cart"));
		map.put("TotalQuanityCart", session.getAttribute("TotalQuanityCart"));
		map.put("TotalPriceCart", session.getAttribute("TotalPriceCart"));
		map.put("bills", bill);
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", session.getAttribute("lastname"));
		_mvShare = new ModelAndView("web/checkout/index", map);
		return _mvShare;
	}

	@RequestMapping(value = { "/trang-chu/checkout" }, method = RequestMethod.POST)
	public String checkoutBill(@ModelAttribute("bills") Bill bill) {
		bill.setQuantity((int) session.getAttribute("TotalQuanityCart"));
		bill.setAmount((int) session.getAttribute("TotalPriceCart"));
		if (billsService.addBills(bill) > 0) {
			HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
			billsService.addBillsDetail(cart);
		}
		session.removeAttribute("Cart");
		session.removeAttribute("TotalQuanityCart");
		session.removeAttribute("TotalPriceCart");
		return "redirect:/trang-chu/PaySuccess";
	}
}
