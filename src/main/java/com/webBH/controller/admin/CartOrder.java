package com.webBH.controller.admin;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CartOrder extends BaseControllerAdmin{
	
	@RequestMapping(value = "/admin/Order", method = RequestMethod.GET)
	public ModelAndView OrderPage(ModelMap modelMap) {
		map = new HashMap<>();
		map.put("User_name", getUserName());
		map.put("bills", billsService.getAllBill());
		_mvShare = new ModelAndView("admin/order/index", map);
		return _mvShare;
	}
	
	@RequestMapping(value = "/admin/Order/{id}", method = RequestMethod.GET)
	public ModelAndView OrderDetailPage(@PathVariable("id") int id, ModelMap modelMap) {
		map = new HashMap<>();
		map.put("User_name", getUserName());
		map.put("bills_detail", billsService.getAllBillDetailWithID(id));
		_mvShare = new ModelAndView("admin/order/orderDetail", map);
		return _mvShare;
	}
	
}
