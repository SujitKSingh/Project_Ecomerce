package com.mvcdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.UserDAO;
import com.niit.model.User;

@Controller
public class RegisterController

{
	@Autowired
	UserDAO userDetailDAO;

	@RequestMapping(value = "/Register", method = RequestMethod.POST)
	public String insertUsers(@ModelAttribute("user") User user,Model m)

	{
		List<User> ulist=userDetailDAO.getAllUser();
		for(User user1:ulist) {
			if(user1.getEmailId().equals(user.getEmailId())) {
				m.addAttribute("emailMsg", "* Email Address Alredy Exists");
				m.addAttribute("user", new User());
				return "Register";
				
			}
			if(user1.getUsername().equals(user.getUsername())) {
				m.addAttribute("usernameMsg", "* Username Alredy Exists");
				m.addAttribute("user", new User());
				return "Register";
				
			}
		}
		
		userDetailDAO.registerUser(user);
		return "Login";
	}

}