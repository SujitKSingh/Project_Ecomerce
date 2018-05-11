package com.niit.dao;

import java.util.List;

import com.niit.model.OrderItem;
import com.niit.model.Product;

public interface OrderItemDAO {
	public boolean addorderItem(OrderItem orderItem);
	public List<OrderItem> getorderItems(int orderid);
	public int getProductforlistorder(int orderitemId);

}
