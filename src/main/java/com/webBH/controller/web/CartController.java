package com.webBH.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

import com.webBH.model.Cart;
import com.webBH.service.CartService;
import com.webBH.service.CategoryService;

@Controller
public class CartController {

	@Autowired
	CategoryService categoryService;

	@Autowired
	CartService cartService;

	private String getUserName() {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		if (StringUtils.isEmpty(username)) {
			username = "";
		} else if (username == "anonymousUser") {
			username = "";
		}
		return username;
	}

	@RequestMapping(value = "/trang-chu/cart", method = RequestMethod.GET)
	public ModelAndView cartPage(HttpSession session) {
//		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
		Map<String, Object> map = new HashMap<>();
		map.put("Categories", categoryService.getAllCategory());
		map.put("User_name", getUserName());
		map.put("Cart", session.getAttribute("Cart"));
		map.put("TotalQuanityCart", session.getAttribute("TotalQuanityCart"));
		map.put("TotalPriceCart", session.getAttribute("TotalPriceCart"));
		ModelAndView mv = new ModelAndView("web/cart/cart", map);
		return mv;
	}

	@RequestMapping(value = "/trang-chu/cart/{id}", method = RequestMethod.GET)
	public String addCart(@PathVariable("id") int id, HttpServletRequest request, HttpSession session, Model model,
			RedirectAttributes redirectAttributes) {

		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, Cart>();
		}
		cart = cartService.addCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuanityCart", cartService.TotalQuanity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		model.addAttribute("Categories", categoryService.getAllCategory());
		model.addAttribute("User_name", getUserName());

//		return "redirect:/trang-chu/product/" + id;

		// Sau khi thêm, thì thêm ở trên nào nào trả về trang đó
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/trang-chu/editCart/{id}/{quantity}")
	public String editCart(@PathVariable("id") int id, @PathVariable("quantity") Integer quantity, HttpServletRequest request, HttpSession session, Model model) {

		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, Cart>();
		}
		cart = cartService.editCart(id, quantity, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuanityCart", cartService.TotalQuanity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		model.addAttribute("Categories", categoryService.getAllCategory());
		model.addAttribute("User_name", getUserName());

//		return "redirect:/trang-chu/product/" + id;

		// Sau khi thêm, thì thêm ở trên nào nào trả về trang đó
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/trang-chu/deleteCart/{id}")
	public String deleteCart(@PathVariable("id") int id, HttpServletRequest request, HttpSession session, Model model) {
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
