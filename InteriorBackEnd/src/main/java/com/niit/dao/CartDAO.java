package com.niit.dao;

import java.util.List;

import com.niit.model.CartItem;

public interface CartDAO
{
	public boolean addcartItem(CartItem cartItem);
	public CartItem getCartItem(int cartItemId);
	public boolean deleteCartItem(CartItem cartItem);
	public boolean updateCartItem(CartItem cartItem);
	public List<CartItem> getcartItems(String username);
	
}
