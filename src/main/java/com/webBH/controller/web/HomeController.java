package com.webBH.controller.web;

import java.security.Principal;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.webBH.model.Paginates;
import com.webBH.model.Users;

@Controller(value = "homeControllerOfWeb")
public class HomeController extends BaseController {

//	private Object userAuth() {
//		Object Auth = new Object();
//		if(getUserName() != "") {
//			Auth = userService.getUserWithUsername(getUserName());			
//		}
//		return Auth;
//	}

	@RequestMapping(value = { "/", "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView homePage() {
		Users loginInfo = new Users();
		map = new HashMap<>();
		if (getUserName() != "") {
			map.put("userAuth", userService.getUserWithUsername(getUserName()));
			session.setAttribute("userAuthInfo", userService.getUserWithUsername(getUserName()));
			loginInfo = (Users) session.getAttribute("userAuthInfo");
			session.setAttribute("lastname", loginInfo.getLastname());
		}

		map.put("Categories", categoryService.getAllCategory());
		map.put("productPop", productService.getAllProductPopular());
		map.put("productNew", productService.getAllProductNew());
		map.put("User_name", session.getAttribute("lastname"));
		_mvShare = new ModelAndView("web/home2", map);
		return _mvShare;
	}

	@RequestMapping(value = { "/trang-chu/pro-duct/{id}" }, method = RequestMethod.GET)
	public ModelAndView proOfCate(@PathVariable int id) {
		map = new HashMap<>();
		int totalData = productService.getAllProductByCategoryID(id).size();
		Paginates paginateInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, 1);
		map.put("idCategory", id);
		map.put("paginateInfo", paginateInfo);
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", session.getAttribute("lastname"));
		map.put("productsPaginate",
				productService.getAllProductOfCategoryWithLimit(id, paginateInfo.getStart(), totalProductsPage));
		_mvShare = new ModelAndView("web/proOfCategory/index", map);
		return _mvShare;
	}

	@RequestMapping(value = { "/trang-chu/pro-duct/{id}/{currentPage}" }, method = RequestMethod.GET)
	public ModelAndView proOfCateDe(@PathVariable int id, @PathVariable String currentPage) {
		map = new HashMap<>();
		int totalData = productService.getAllProductByCategoryID(id).size();
		Paginates paginateInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage,
				Integer.parseInt(currentPage));
		map.put("idCategory", id);
		map.put("paginateInfo", paginateInfo);
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", session.getAttribute("lastname"));
		map.put("productsPaginate",
				productService.getAllProductOfCategoryWithLimit(id, paginateInfo.getStart(), totalProductsPage));
		_mvShare = new ModelAndView("web/proOfCategory/index", map);
		return _mvShare;
	}

	@RequestMapping(value = { "/trang-chu/product/{id}" }, method = RequestMethod.GET)
	public ModelAndView detailProduct(@PathVariable("id") int id) {
		map = new HashMap<>();
		map.put("Categories", categoryService.getAllCategory());
		map.put("productDetail", productService.getProduct(id));
		map.put("User_name", session.getAttribute("lastname"));
		_mvShare = new ModelAndView("web/detail/productDetail", map);
		return _mvShare;
	}

	@RequestMapping(value = { "/trang-chu/contact" }, method = RequestMethod.GET)
	public ModelAndView contactPage() {
		map = new HashMap<>();
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", session.getAttribute("lastname"));
		_mvShare = new ModelAndView("web/contact/contact", map);
		return _mvShare;
	}
	
	@RequestMapping(value = { "/trang-chu/PaySuccess" }, method = RequestMethod.GET)
	public ModelAndView paySuccessPage() {
		map = new HashMap<>();
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", session.getAttribute("lastname"));
		_mvShare = new ModelAndView("web/PaySuccess/index", map);
		return _mvShare;
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(Principal principal, Model model) {
		model.addAttribute("User_name", session.getAttribute("lastname"));
		if (principal != null) {
			model.addAttribute("message",
					"Hi " + principal.getName() + "<br> You do not have permission to access this page!");
		} else {
			model.addAttribute("msg", "You do not have permission to access this page!");
		}
		return "redirect:/trang-chu";
	}
}
