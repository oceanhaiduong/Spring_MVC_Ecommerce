package com.webBH.controller.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.webBH.model.Paginates;
import com.webBH.service.CategoryService;
import com.webBH.service.PaginatesService;
import com.webBH.service.ProductService;

@Controller
public class ShopController {
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	PaginatesService paginatesService;
	
	private int totalProductsPage = 9;

	private String getUserName() {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		if (StringUtils.isEmpty(username)) {
			username = "";
		} else if (username == "anonymousUser") {
			username = "";
		}
		return username;
	}

	@RequestMapping(value = "/trang-chu/shop", method = RequestMethod.GET)
	public ModelAndView shopWithFilterPage() {
		Map<String, Object> map = new HashMap<>();
		int totalData = productService.getAllProduct().size();
		Paginates paginateInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, 1);
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", getUserName());
		map.put("paginateInfo", paginateInfo);
		map.put("productsPaginate", productService.getAllProductWithLimit(paginateInfo.getStart(), totalProductsPage));
		ModelAndView mv = new ModelAndView("web/shop/shop", map);
		return mv;
	}
	
	@RequestMapping(value = "/trang-chu/shop/{currentPage}", method = RequestMethod.GET)
	public ModelAndView shopCurrentPage(@PathVariable String currentPage) {
		Map<String, Object> map = new HashMap<>();
		int totalData = productService.getAllProduct().size();
		Paginates paginateInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", getUserName());
		map.put("paginateInfo", paginateInfo);
		map.put("productsPaginate", productService.getAllProductWithLimit(paginateInfo.getStart(), totalProductsPage));
		ModelAndView mv = new ModelAndView("web/shop/shop", map);
		return mv;
	}

}
