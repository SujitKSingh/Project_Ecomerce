package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class PageController {

	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;
	
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

	

	@RequestMapping("/perform_logout")
	public String showLogout() {
		return "Logout";
	}
	
	@RequestMapping("/searchBy")
	public String productBySearch(@RequestParam("search")String search,Model m) {
		
		List<Product> listProducts = productDAO.getBySearch(search);
		m.addAttribute("listProducts", listProducts);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		m.addAttribute("role", auth.getAuthorities().toString());

		return "ProductPage";
	}
	
	@RequestMapping("/filterBy")
	public String productByFilter(@RequestParam("min")int min,@RequestParam("max")int max,Model m) {
		List<Product> listProducts = productDAO.getByFilter(min,max);
		m.addAttribute("listProducts", listProducts);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		m.addAttribute("role", auth.getAuthorities().toString());

		return "ProductPage";

	}
	
	@RequestMapping("cart")
	public String myCart(Model m,HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		List<CartItem> listCartItems=cartDAO.getcartItems(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandTotal",this.grandTotal(listCartItems));
		m.addAttribute("cartList",cartDAO.getcartItems(username));
		return "Cart";
	}
	public int grandTotal(List<CartItem> listCartItems)
	{
		int grandTotal=0;
		for(CartItem cartItem:listCartItems)
		{
			grandTotal=grandTotal+cartItem.getQuantity()*(productDAO.getProduct(cartItem.getProductId()).getproductPrice());
		}
		System.out.println(grandTotal);
		return grandTotal;
		
	}
	
	
}
