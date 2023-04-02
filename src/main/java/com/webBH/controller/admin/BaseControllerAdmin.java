package com.webBH.controller.admin;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;

import com.webBH.model.Category;
import com.webBH.model.Product;
import com.webBH.model.Users;
import com.webBH.service.BillsService;
import com.webBH.service.CategoryService;
import com.webBH.service.ProductService;
import com.webBH.service.UserService;

@Controller
public class BaseControllerAdmin {

	@Autowired
	public ProductService productService;

	@Autowired
	public CategoryService categoryService;

	@Autowired
	public ServletContext context;

	@Autowired
	public UserService userService;
	
	@Autowired
	public BillsService billsService;

	public ModelAndView _mvShare = new ModelAndView();

	Map<String, Object> map = new HashMap<>();

	Product product = new Product();

	Category category = new Category();

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
