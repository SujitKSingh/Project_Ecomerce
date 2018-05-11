package com.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.OrderDetailDAO;
import com.niit.dao.UserDAO;
import com.niit.emailsend.App;
import com.niit.model.User;

@Controller
public class UserController {
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	HttpSession httpsession;
	
	
	@SuppressWarnings({ "unchecked", "unused" })
	@RequestMapping("/login_success")
	public String showHomePage(HttpSession session, Model m) {
		String page = "";
		boolean loggedIn;

		// Retrieving Username
		SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = securityContext.getAuthentication();

		String username = authentication.getName();

		// Role

		Collection<GrantedAuthority> roles = (Collection<GrantedAuthority>) authentication.getAuthorities();

		for (GrantedAuthority role : roles) {
			session.setAttribute("role", role.getAuthority());

			if (role.getAuthority().equals("ROLE_ADMIN")) {
				loggedIn = true;
				page = "AdminHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			} else {
				loggedIn = true;
				page = "UserHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			}
		}
		return "redirect:/";

	}

	@RequestMapping("/UserHome")
	public String UserHome(Model m) {
		SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = securityContext.getAuthentication();

		String username = authentication.getName();
		m.addAttribute("orderdetails", orderDetailDAO.getAll(username));
		m.addAttribute("username", username);
		return "UserHome";

	}
	
	@RequestMapping("/getemail")
	public String getEmail(@RequestParam("username")String uname,@RequestParam("email")String to,@RequestParam("mobileNo")String mobileNo,@RequestParam("comment")String comment, HttpSession session,Model m)
	{
		SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = securityContext.getAuthentication();
		String username = authentication.getName();
		User from=userDAO.getUserByUsername(username);
		App.sendmail(to, from.getEmailId(),"contact me",comment+"\nMobile Number:-"+mobileNo+"\nUser Name:-"+uname);
		m.addAttribute("message", "Congrtatulations Your mail has been sent Our Team Will Contact You Soon");
		return "ContactUs";
	}
	
	
	
}