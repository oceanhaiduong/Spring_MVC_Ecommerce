package com.webBH.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webBH.model.Users;
import com.webBH.service.UserService;

@Controller
public class AuthController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(Model model) {

		return "web/auth/loginPage";
	}

	@RequestMapping(value = "/SignUp", method = RequestMethod.GET)
	public ModelAndView SignUpPage() {
		Map<String, Object> map = new HashMap<>();
		Users user = new Users();
		map.put("newUser", user);
		return new ModelAndView("web/auth/signUpPage", map);
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String NewUser(@ModelAttribute("newUser") @Valid Users user, BindingResult bindingResult,
			@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password, 
			@RequestParam(value = "user_role", required = true) String user_role, 
			@RequestParam(value = "enabled", required = true) int enabled, 
			RedirectAttributes redirectAttributes) {

		System.out.println(username);
		System.out.println(password);
		System.out.println(user_role);
		System.out.println(enabled);

		if (bindingResult.hasErrors()) {
			return "web/auth/signUpPage";
		} else {
			user = new Users();
			user.setUsername(username);
			user.setPassword(password);
			user.setUser_role(user_role);
			user.setEnabled(enabled);
			int resp = userService.addUsers(user);
			if (resp > 0) {
				return "redirect:/admin/login";

			} else {
				return "web/auth/signUpPage";
			}

		}
	}

}
