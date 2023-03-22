package com.webBH.controller.web;

/*
 * import org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.ModelAttribute; import
 * org.springframework.web.bind.annotation.PostMapping; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * import com.webBH.model.User;
 * 
 * @Controller public class LoginController {
 * 
 *//**
	 * Tạo một đối tượng signUpForm
	 * 
	 * @return SignUpForm
	 */
/*
 * @ModelAttribute("UserForm") 
 * public User setSignUpForm() { return new User();
 * }
 * 
 *//**
	 * Hiển thị HTML form
	 * 
	 * @return String
	 */
/*
 * @GetMapping("/Login") public String showForm() { return "auth/Login"; }
 * 
 *//**
	 * Tạo user
	 * 
	 * @param signUpForm
	 * @param model
	 * @return String
	 *//*
		 * @PostMapping("/LoginSuccess") 
		 * public String
		 * saveUser(@ModelAttribute("UserForm") User signUpForm, Model model) {
		 * 
		 * System.out.println("Username : " + signUpForm.getUserName());
		 * System.out.println("Password : " + signUpForm.getPassword());
		 * System.out.println("Email : " + signUpForm.getEmail());
		 * 
		 * model.addAttribute("message", "User SignUp successfully.");
		 * model.addAttribute("userD", signUpForm);
		 * 
		 * return "auth/signup-success"; }
		 * 
		 * // @RequestMapping(value = "/Login", method = RequestMethod.GET) // public
		 * ModelAndView homePage() { // ModelAndView mav = new ModelAndView("web/home");
		 * // return mav; // } }
		 */