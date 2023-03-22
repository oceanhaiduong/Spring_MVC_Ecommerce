package com.webBH.controller.web;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfWeb")
public class HomeController {
	// RequestMapping : noi nhan url, method : get - lay thong tin
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	   public ModelAndView homePage() {
	      ModelAndView mav = new ModelAndView("web/home2");
	      return mav;
	   }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	   public String loginPage(Model model ) {
	       
	       return "security/loginPage";
	   }
	
	@RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
	   public String logoutSuccessfulPage(Model model) {
	       model.addAttribute("title", "Logout");
	       return "security/logoutSuccessfulPage";
	   }
	
	 @RequestMapping(value = "/userInfo", method = RequestMethod.GET)
	   public String userInfo(Model model, Principal principal) {

	       // Sau khi user login thanh cong se co principal
	       String userName = principal.getName();

	       System.out.println("User Name: "+ userName);

	       return "security/userInfoPage";
	   }

	   @RequestMapping(value = "/403", method = RequestMethod.GET)
	   public String accessDenied(Model model, Principal principal) {
	       
	       if (principal != null) {
	           model.addAttribute("message", "Hi " + principal.getName()
	                   + "<br> You do not have permission to access this page!");
	       } else {
	           model.addAttribute("msg",
	                   "You do not have permission to access this page!");
	       }
	       return "security/403Page";
	   }
}
