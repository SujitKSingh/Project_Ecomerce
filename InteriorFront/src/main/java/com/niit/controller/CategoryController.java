package com.niit.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class CategoryController {
	@Autowired	
	CategoryDAO categoryDAO;


	@RequestMapping("/category")
	public String showCategory(Model m) {
		List<Category> listCategories = categoryDAO.getCategories();
		m.addAttribute("listCategories", listCategories);
		m.addAttribute("category", new Category());
		for (Category category : listCategories) {
			System.out.println(category.getCategoryName() + ",");
		}
		return "Category";
	}

	@RequestMapping(value = "/InsertCategory", method = RequestMethod.POST)
	public String insertCategoryData(@Valid @ModelAttribute("category")Category category,BindingResult results,Model m) {
		List<Category> listCategories;
		if(results.hasErrors())
		{
			listCategories = categoryDAO.getCategories();
			m.addAttribute("listCategories", listCategories);
			return "Category";
		}
		
		categoryDAO.addCategory(category);

		listCategories = categoryDAO.getCategories();
		m.addAttribute("listCategories", listCategories);
		return "redirect:/category";
	}

	@RequestMapping("/deleteCategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId, Model m) {
		Category category = categoryDAO.getCategory(categoryId);

		categoryDAO.deleteCategory(category);

		List<Category> listCategories = categoryDAO.getCategories();
		m.addAttribute("category", new Category());
		m.addAttribute("listCategories", listCategories);
		return "redirect:/category";
	}

	@RequestMapping("/updateCategory/{categoryId}")
	public String updateCategory(@PathVariable("categoryId") int categoryId, Model m) {
		Category category = categoryDAO.getCategory(categoryId);

		List<Category> listCategories = categoryDAO.getCategories();
		
		m.addAttribute("listCategories", listCategories);
		m.addAttribute("categoryInfo", category);

		return "UpdateCategory";
	}

	@RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
	public String updateCategoryInDB(@RequestParam("catid") int categoryId,
			@RequestParam("catname") String categoryName, @RequestParam("catdesc") String categoryDesc, Model m) {
		Category category = categoryDAO.getCategory(categoryId);
		category.setCategoryName(categoryName);
		category.setCateogryDesc(categoryDesc);

		categoryDAO.updateCategory(category);
		m.addAttribute("category", new Category());
		List<Category> listCategories = categoryDAO.getCategories();
		m.addAttribute("listCategories", listCategories);

		return "redirect:/category";
	}

}