package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.OrderDetail;
import com.niit.model.Product;

@Repository("orderDetailDAO")

public class OrderDetailDAOImpl implements OrderDetailDAO

{

@Autowired
SessionFactory sessionFactory;

@Transactional
@Override
public boolean confirmOrderDetail(OrderDetail orderDetail)

{
try

{
sessionFactory.getCurrentSession().save(orderDetail);
return true;
}

catch (Exception E) {
System.out.println(E);
return false;
}

}

@Override
public List<OrderDetail> getAll(String UserName) {
	Session session=sessionFactory.openSession();
	Query query=session.createQuery("from OrderDetail where Username=:UserName").setParameter("UserName", UserName);
	List<OrderDetail> listOrderDetail=(List<OrderDetail>)query.list();
	return listOrderDetail;
}
}