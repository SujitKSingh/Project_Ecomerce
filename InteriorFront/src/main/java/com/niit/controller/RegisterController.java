package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String insertUsers(@ModelAttribute("user") User user)

	{
		userDetailDAO.registerUser(user);
		return "Login";
	}

}