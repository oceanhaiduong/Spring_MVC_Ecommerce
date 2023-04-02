package com.webBH.controller.admin;

import java.util.HashMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "homeControllerOfAdmin")
public class HomeController extends BaseControllerAdmin {

	// RequestMapping : noi nhan url, method : get - lay thong tin
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView homePage() {
		map = new HashMap<>();
		map.put("User_name", getUserName());
		map.put("products", productService.getAllProduct());
		map.put("users", userService.getAllUsers());
		map.put("bills", billsService.getAllBill());
		_mvShare = new ModelAndView("admin/home", map);
		return _mvShare;
	}

}
