package com.mvcdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.User;

@Controller
public class PageController {
	

	@RequestMapping("/")
	public String showHomePage() {
		return "index";
	}

	@RequestMapping("/login")
	public String showLogin() {
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
