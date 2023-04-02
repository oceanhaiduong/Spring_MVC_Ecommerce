package com.webBH.controller.web;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.webBH.model.Cart;

@Controller
public class CartController extends BaseController {

	@RequestMapping(value = "/trang-chu/cart", method = RequestMethod.GET)
	public ModelAndView cartPage() {
//		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
		map = new HashMap<>();
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", session.getAttribute("lastname"));
		map.put("Cart", session.getAttribute("Cart"));
		map.put("TotalQuanityCart", session.getAttribute("TotalQuanityCart"));
		map.put("TotalPriceCart", session.getAttribute("TotalPriceCart"));
		_mvShare = new ModelAndView("web/cart/cart", map);
		return _mvShare;
	}

	@RequestMapping(value = "/trang-chu/cart/{id}", method = RequestMethod.GET)
	public String addCart(@PathVariable("id") int id, @RequestParam(name = "quantity", required = true) int quantity,
			Model model) {

		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, Cart>();
		}
		cart = cartService.addCart(id, cart, quantity);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuanityCart", cartService.TotalQuanity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		model.addAttribute("Categories", categoryService.getAllCategory());
		model.addAttribute("User_name", session.getAttribute("lastname"));

		// Sau khi thêm, thì thêm ở trên nào nào trả về trang đó
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/trang-chu/editCart/{id}/{quantity}")
	public String editCart(@PathVariable("id") int id, @PathVariable("quantity") Integer quantity, Model model) {

		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, Cart>();
		}
		cart = cartService.editCart(id, quantity, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuanityCart", cartService.TotalQuanity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		model.addAttribute("Categories", categoryService.getAllCategory());
		model.addAttribute("User_name", session.getAttribute("lastname"));

		// Sau khi thêm, thì thêm ở trên nào nào trả về trang đó
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/trang-chu/deleteCart/{id}")
	public String deleteCart(@PathVariable("id") int id) {
		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, Cart>();
		}
		cart = cartService.deleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuanityCart", cartService.TotalQuanity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

}
