package com.niit.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.CategoryDAO;
import com.niit.dao.OrderDetailDAO;
import com.niit.dao.OrderItemDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SuplierDAO;
import com.niit.dao.UserDAO;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;
import com.niit.model.OrderItem;

@Controller
public class OrderController {
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	SuplierDAO suplierDAO;
	@Autowired
	ProductDAO productDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	UserDAO userDAO;
	
	@Autowired
	OrderDetailDAO orderDAO;
	
	@Autowired
	OrderItemDAO orderItemDAO; 

	@RequestMapping("/ConfirmOrder")
	public String confirmOrder(HttpSession session, Model m) {
		String username = (String) session.getAttribute("username");
		List<CartItem> listCartItems = cartDAO.getcartItems(username);
		m.addAttribute("cartList", listCartItems);
		m.addAttribute("grandTotal", this.grandTotal(listCartItems));
		return "OrderConfirm";
	}

	@RequestMapping("/PaymentConfirm")
	public String paymentConfirm(@RequestParam("pmode") String pmode, @RequestParam("shipAddr") String shipAddr,HttpSession session,Model m) {
		if(!shipAddr.equals(" "))
		{
		OrderDetail order = new OrderDetail();
		order.setOrderDate(new Date());
		order.setShippingAddress(shipAddr);
		order.setTransactionType(pmode);
		order.setTotalAmount(this.grandTotal(cartDAO.getcartItems(session.getAttribute("username").toString())));
		order.setUsername(session.getAttribute("username").toString());
		
		int cartid = 0;
		int cartItemId = 0;
		
		List<CartItem> cartlist=cartDAO.getcartItems(session.getAttribute("username").toString());
		
		String products[][]=new String[cartlist.size()][2];
		
		int row=0;
		OrderItem orderItem=new OrderItem();
		order.setCartId(cartid);	
		orderDAO.confirmOrderDetail(order);
		
		for (CartItem cart : cartlist) {
			cartid = cart.getCartId();
			cartItemId = cart.getCartItemId();
			products[row][0]=cart.getProduct().getproductName();
			products[row][1]=cart.getProduct().getproductPrice()+"";
			
			orderItem.setOderId(order.getOderid());
			orderItem.setProductId(cart.getProductId());
			orderItemDAO.addorderItem(orderItem);
			
			row++;	
		}
		
		
		
		
		String prod="";
		for(int i=0;i<row;i++)
		{
			for(int j=0;j<2;j++) {
				prod+=products[i][j]+"\t";
			}
			prod+="\n";
		}
		
	
		String username=session.getAttribute("username").toString();
		orderpdfcontroller.create(order,cartlist,userDAO.getUserByUsername(username));
		return "redirect:/sendfile/"+session.getAttribute("username").toString();
		}
		else {
			String username = (String) session.getAttribute("username");
			List<CartItem> listCartItems = cartDAO.getcartItems(username);
			m.addAttribute("cartList", listCartItems);
			m.addAttribute("grandTotal", this.grandTotal(listCartItems));
			m.addAttribute("Null", "* Please Enter Full Shipping Address !");
			return "OrderConfirm";
		}
	}

	public int grandTotal(List<CartItem> listCartItems) {
		int grandTotal = 0;
		for (CartItem cartItem : listCartItems) {
			grandTotal = grandTotal
					+ cartItem.getQuantity() * (productDAO.getProduct(cartItem.getProductId()).getproductPrice());
		}
		System.out.println(grandTotal);
		return grandTotal;
	}
	
	
	

}
