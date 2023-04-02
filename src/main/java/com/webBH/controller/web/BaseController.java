package com.webBH.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;

import com.webBH.model.Users;
import com.webBH.service.BillsService;
import com.webBH.service.CartService;
import com.webBH.service.CategoryService;
import com.webBH.service.PaginatesService;
import com.webBH.service.ProductService;
import com.webBH.service.UserService;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class BaseController {
	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;

	@Autowired
	PaginatesService paginatesService;

	@Autowired
	UserService userService;

	@Autowired
	CartService cartService;

	@Autowired
	public HttpSession session;
	
	@Autowired
	public HttpServletRequest request;

	@Autowired
	BillsService billsService;

	Map<String, Object> map = new HashMap<>();

	public int totalProductsPage = 6;

	public int totalProductsPageShop = 9;

	public ModelAndView _mvShare = new ModelAndView();

	Users user = new Users();

	public String getUserName() {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		if (StringUtils.isEmpty(username)) {
			username = "";
		} else if (username == "anonymousUser") {
			username = "";
		}
		return username;
	}

}
