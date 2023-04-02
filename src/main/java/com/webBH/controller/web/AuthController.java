package com.webBH.controller.web;

import java.util.HashMap;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.webBH.model.Users;


@Controller
public class AuthController extends BaseController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		
		return "web/auth/loginPage";
	}

	@RequestMapping(value = "/SignUp", method = RequestMethod.GET)
	public ModelAndView SignUpPage() {
		map = new HashMap<>();
		user = new Users();
		map.put("newUser", user);
		return new ModelAndView("web/auth/signUpPage", map);
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String NewUser(@ModelAttribute("newUser") @Valid Users user, BindingResult bindingResult,
			@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password, 
			@RequestParam(value = "user_role", required = true) String user_role, 
			@RequestParam(value = "enabled", required = true) int enabled) {

//		System.out.println(username);
//		System.out.println(password);
//		System.out.println(user_role);
//		System.out.println(enabled);

		if (bindingResult.hasErrors()) {
			return "web/auth/signUpPage";
		} else {
			user = new Users();
			user.setUsername(username);
			user.setPassword(password);
			user.setUser_role(user_role);
			user.setEnabled(enabled);
			int resp = userService.SigUp(user);
			if (resp > 0) {
				return "redirect:/admin/login";

			} else {
				return "web/auth/signUpPage";
			}

		}
	}

}
