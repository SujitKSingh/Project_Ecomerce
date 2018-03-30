package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDAO;
import com.niit.model.User;

@Controller
public class PageController {

	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/")
	public String showHomePage() {
		
		return "index";
	}

	@RequestMapping("/login")
	public String showLogin(@RequestParam(name="error",required=false)String error,Model m) {
		if(error!=null) {
			m.addAttribute("message","username and password is Invalid");
		}
		return "Login";
	}

	@RequestMapping("/aboutus")
	public String showAboutUs() {
		return "AboutUs";
	}
	
	@RequestMapping("/contactus")
	public String showContactUs() {
		return "ContactUs";
	}

	@RequestMapping("/termsandconditions")
	public String showTermsAndConditions() {
		return "TermsAndConditions";
	} 
	
	@RequestMapping("/privacy")
	public String showPrivacy() {
		return "Privacy";
	} 
	
	
	@RequestMapping("/register")
	public String showRegister(Model model) {
		model.addAttribute("user", new User());

		return "Register";
	}

	@RequestMapping("/cart")
	public String showCart() {
		return "Cart";
	}

	@RequestMapping("/perform_logout")
	public String showLogout() {
		return "Logout";
	}
	
}
