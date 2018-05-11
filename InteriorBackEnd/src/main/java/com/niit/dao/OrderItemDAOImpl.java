
package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.model.CartItem;
import com.niit.model.OrderItem;
import com.niit.model.Product;


public class OrderItemDAOImpl implements  OrderItemDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public boolean addorderItem(OrderItem orderItem)
	{
	try
	{
	sessionFactory.getCurrentSession().save(orderItem);
	return true;
	}
	catch(Exception e)
	{
	System.out.println("Exception Arised:"+e);
	return false;
	}
	}
	
	public List<OrderItem> getorderItems(int orderId) 
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from OrderItem where oderId=:oderId").setParameter("oderId", orderId);
		List<OrderItem> listorderItems=(List<OrderItem>)query.list();
		return listorderItems;
	}
	
	@Transactional
	@Override
	public int getProductforlistorder(int orderitemId) {
		Session session=sessionFactory.openSession();
		return (int) sessionFactory.getCurrentSession()
				.createQuery("SELECT productId FROM OrderItem where id=:oderitemId")
				.setParameter("oderitemId", orderitemId).getSingleResult();
		
	}
	
	
}

