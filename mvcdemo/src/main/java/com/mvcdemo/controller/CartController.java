package com.mvcdemo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.Product;

@Controller
public class CartController

{
	@Autowired
	CartDAO cartDAO;

	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/addtoCart/{productId}")
	public String addCartItem(@PathVariable("productId") int productId, @RequestParam("quantity") int quantity,
			HttpSession session, Model m) {
		CartItem cartItem = new CartItem();
		Product product = productDAO.getProduct(productId);
		
		String username = (String) session.getAttribute("username");

		cartItem.setProductId(productId);
		cartItem.setCartId(1001);
		cartItem.setQuantity(quantity);
		cartItem.setUserName(username);
		cartItem.setPaymentStatus("NP");
		cartItem.setSubTotal(quantity * product.getproductPrice());

		cartDAO.addcartItem(cartItem);

		List<CartItem> listCartItems = cartDAO.getcartItems(username);
		m.addAttribute("cartList", listCartItems);
		m.addAttribute("grandTotal", this.grandTotal(listCartItems));
		m.addAttribute("cartList", cartDAO.getcartItems(username));
		return "Cart";
}

	@RequestMapping("/updateCartItem/{cartItemId}")
	public String updateCartItem(@PathVariable("cartItemId") int cartItemId, @RequestParam("qty") int quantity, Model m,
			HttpSession session) {
		CartItem cartItem = cartDAO.getCartItem(cartItemId);
		Product product = productDAO.getProduct(cartItem.getProductId());
		cartItem.setQuantity(quantity);
		cartItem.setSubTotal(quantity * product.getproductPrice());

		cartDAO.updateCartItem(cartItem);
		String username = (String) session.getAttribute("username");
		List<CartItem> listCartItems = cartDAO.getcartItems(username);
		m.addAttribute("cartList", listCartItems);
		m.addAttribute("grandTotal", this.grandTotal(listCartItems));

		System.out.println(cartItem.getProductId());

		return "Cart";
	}

	@RequestMapping("/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId") int cartItemId, Model m, HttpSession session) {

		CartItem cartItem = cartDAO.getCartItem(cartItemId);

		cartDAO.deleteCartItem(cartItem);

		String username = (String) session.getAttribute("username");
		List<CartItem> listCartItems = cartDAO.getcartItems(username);
		m.addAttribute("cartList", listCartItems);
		m.addAttribute("grandTotal", this.grandTotal(listCartItems));
		return "Cart";
	}

	public int grandTotal(List<CartItem> listCartItems) {
		int grandTotal = 0;
		for (CartItem cartItem : listCartItems) {
			int c=cartItem.getProductId();
			System.out.println(c);
			int p=productDAO.getProduct(c).getproductPrice();
			System.out.println("Price"+p);
			grandTotal = grandTotal+cartItem.getQuantity()*(p);

		}
		System.out.println(grandTotal);
		return grandTotal;
	}

}
