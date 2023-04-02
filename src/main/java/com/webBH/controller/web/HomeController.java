package com.webBH.controller.web;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webBH.model.Paginates;
import com.webBH.model.Product;
import com.webBH.service.CategoryService;
import com.webBH.service.ProductService;
import com.webBH.service.PaginatesService;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;
	
	@Autowired
	PaginatesService paginatesService;
	
	private int totalProductsPage = 6;

	private String getUserName() {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		if (StringUtils.isEmpty(username)) {
			username = "";
		} else if (username == "anonymousUser") {
			username = "";
		}
		return username;
	}

	// RequestMapping : noi nhan url, method : get - lay thong tin
	@RequestMapping(value = { "/", "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView homePage() {
		Map<String, Object> map = new HashMap<>();
		map.put("Categories", categoryService.getAllCategory());
		map.put("productPop", productService.getAllProductPopular());
		map.put("productNew", productService.getAllProductNew());
		map.put("User_name", getUserName());
		ModelAndView mav = new ModelAndView("web/home2", map);
		return mav;
	}
	
	@RequestMapping(value = { "/trang-chu/pro-duct/{id}" }, method = RequestMethod.GET)
	public ModelAndView proOfCate(@PathVariable int id) {
		Map<String, Object> map = new HashMap<>();
		int totalData = productService.getAllProductByCategoryID(id).size();
		Paginates paginateInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, 1);
		map.put("idCategory", id);
		map.put("paginateInfo", paginateInfo);
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", getUserName());
		map.put("productsPaginate", productService.getAllProductOfCategoryWithLimit(id, paginateInfo.getStart(), totalProductsPage));
//		System.out.println(totalData);
		ModelAndView mav = new ModelAndView("web/proOfCategory/index", map);
		return mav;
	}
	
	@RequestMapping(value = { "/trang-chu/pro-duct/{id}/{currentPage}" }, method = RequestMethod.GET)
	public ModelAndView proOfCateDe(@PathVariable int id, @PathVariable String currentPage) {
		Map<String, Object> map = new HashMap<>();
		int totalData = productService.getAllProductByCategoryID(id).size();
		Paginates paginateInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		map.put("idCategory", id);
		map.put("paginateInfo", paginateInfo);
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", getUserName());
		map.put("productsPaginate", productService.getAllProductOfCategoryWithLimit(id, paginateInfo.getStart(), totalProductsPage));
//		System.out.println(totalData);
		ModelAndView mav = new ModelAndView("web/proOfCategory/index", map);
		return mav;
	}


	@RequestMapping(value = { "/trang-chu/product/{id}" }, method = RequestMethod.GET)
	public ModelAndView detailProduct(@PathVariable("id") int id) {
//		System.out.println(id);
		Map<String, Object> map = new HashMap<>();
		map.put("Categories", categoryService.getAllCategory());
		map.put("productDetail", productService.getProduct(id));
		map.put("User_name", getUserName());
		ModelAndView mav = new ModelAndView("web/detail/productDetail", map);
		return mav;
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal, RedirectAttributes redirectAttributes) {

		if (principal != null) {
			model.addAttribute("message",
					"Hi " + principal.getName() + "<br> You do not have permission to access this page!");
		} else {
			model.addAttribute("msg", "You do not have permission to access this page!");
		}
		return "redirect:/trang-chu";
	}
}
