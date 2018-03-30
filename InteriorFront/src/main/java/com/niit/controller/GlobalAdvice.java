package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@ControllerAdvice
public class GlobalAdvice {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@ModelAttribute("categories")
	public List<Category> getall(){
		for(Category cat:categoryDAO.getCategories()) {
			System.out.println(cat.getCategoryName());
		}
		return categoryDAO.getCategories();
	}
}
