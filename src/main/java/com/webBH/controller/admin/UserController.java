package com.webBH.controller.admin;

import java.util.HashMap;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.webBH.model.Users;

@Controller
public class UserController extends BaseControllerAdmin {

	@RequestMapping(value = "/admin/Users", method = RequestMethod.GET)
	public ModelAndView getProducts(ModelMap productModel) {
		map = new HashMap<>();
		map.put("users", userService.getAllUsers());
		map.put("User_name", getUserName());
		_mvShare = new ModelAndView("admin/user/index", map);
		return _mvShare;
	}

	@RequestMapping(value = "/admin/newUser", method = RequestMethod.GET)
	public ModelAndView AddUserPage() {
		map = new HashMap<>();
		user = new Users();
		map.put("users", user);
		map.put("User_name", getUserName());
		_mvShare = new ModelAndView("admin/user/add", map);
		return _mvShare;
	}

	@RequestMapping(value = "/admin/AddUser", method = RequestMethod.POST)
	public String AddUser(@RequestParam(value = "lastname", required = true) String lastname,
			@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password,
			@RequestParam(value = "user_role", required = true) String user_role,
			@RequestParam(value = "email", required = true) String email,
			@RequestParam(value = "phone", required = true) String phone,
			@RequestParam(value = "enabled", required = true) int enabled, @ModelAttribute("users") @Valid Users user,
			BindingResult bindingResult, ModelMap modelMap) {

		modelMap.addAttribute("User_name", getUserName());
		if (bindingResult.hasErrors()) {
			return "admin/user/add";
		} else {
			user = new Users();
			user.setLastname(lastname);
			user.setUsername(username);
			user.setPassword(password);
			user.setUser_role(user_role);
			user.setEmail(email);
			user.setPhone(phone);
			user.setEnabled(enabled);
			int resp = userService.addUsers(user);
			if (resp > 0) {
				modelMap.addAttribute("msg", "Thêm người dùng thành công !");
				return "admin/user/success/AddSuccess";
			} else {
				modelMap.addAttribute("msg", "Thêm người dùng thất bại !");
				return "admin/user/success/AddSuccess";
			}
		}
	}

	@RequestMapping(value = "/admin/oneUser/{id}", method = RequestMethod.GET)
	public ModelAndView EditUserPage(@PathVariable("id") int id) {
		Map<String, Object> map = new HashMap<>();
//		Users user = new Users();
//		map.put("userUp", user);
		map.put("id", id);
		map.put("user_detail", userService.getUser(id));
		map.put("User_name", getUserName());
		_mvShare = new ModelAndView("admin/user/update", map);
		return _mvShare;
	}

	@RequestMapping(value = "/admin/editUser", method = RequestMethod.POST)
	public String EditUser(@RequestParam int id, @RequestParam(value = "lastname", required = true) String lastname,
			@RequestParam(value = "user_role", required = true) String user_role,
			@RequestParam(value = "email", required = true) String email,
			@RequestParam(value = "phone", required = true) String phone,
			@ModelAttribute("user_detail") @Valid Users user, BindingResult bindingResult, ModelMap modelMap) {
		modelMap.addAttribute("User_name", getUserName());
		if (bindingResult.hasErrors()) {
			modelMap.addAttribute("id", id);
			modelMap.addAttribute("user_detail", userService.getUser(id));
			return "admin/user/update";
		} else {
			user = new Users();
			user.setId(id);
			user.setUser_role(user_role);
			user.setEmail(email);
			user.setPhone(phone);
			user.setLastname(lastname);
			int resp = userService.updateUsers(user);
			if (resp > 0) {
				modelMap.addAttribute("users", userService.getAllUsers());
				modelMap.addAttribute("msg", "Sửa người dùng thành công !");
				return "admin/user/index";
			} else {
				modelMap.addAttribute("msg", "Sửa người dùng thất bại !");
				return "admin/user/success/AddSuccess";
			}
		}
	}

	@RequestMapping(value = "/admin/deleteUser/{id}", method = RequestMethod.GET)
	public ModelAndView deleteUser(@PathVariable("id") int id) {
		map = new HashMap<>();
		int resp = userService.deleteUsers(id);
		map.put("users", userService.getAllUsers());
		map.put("User_name", getUserName());
		if (resp > 0) {
			map.put("msg", "Người dùng với id : " + id + " xóa thành công.");
		} else {
			map.put("msg", "Người dùng với id : " + id + " xóa thất bại.");
		}
		return new ModelAndView("redirect:/admin/Users", map);
	}
}
