package com.webBH.controller.web;

import java.util.HashMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.webBH.model.Paginates;

@Controller
public class ShopController extends BaseController {

	@RequestMapping(value = "/trang-chu/shop", method = RequestMethod.GET)
	public ModelAndView shopWithFilterPage() {
		map = new HashMap<>();
		int totalData = productService.getAllProduct().size();
		Paginates paginateInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPageShop, 1);
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", session.getAttribute("lastname"));
		map.put("paginateInfo", paginateInfo);
		map.put("productsPaginate",
				productService.getAllProductWithLimit(paginateInfo.getStart(), totalProductsPageShop));
		_mvShare = new ModelAndView("web/shop/shop", map);
		return _mvShare;
	}

	@RequestMapping(value = "/trang-chu/shop/{currentPage}", method = RequestMethod.GET)
	public ModelAndView shopCurrentPage(@PathVariable String currentPage) {
		map = new HashMap<>();
		int totalData = productService.getAllProduct().size();
		Paginates paginateInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPageShop,
				Integer.parseInt(currentPage));
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", session.getAttribute("lastname"));
		map.put("paginateInfo", paginateInfo);
		map.put("productsPaginate",
				productService.getAllProductWithLimit(paginateInfo.getStart(), totalProductsPageShop));
		_mvShare = new ModelAndView("web/shop/shop", map);
		return _mvShare;
	}

}
