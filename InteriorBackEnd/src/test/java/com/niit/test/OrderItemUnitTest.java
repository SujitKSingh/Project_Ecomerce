package com.niit.test;

import static org.junit.Assert.assertTrue;

import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.OrderItemDAO;
import com.niit.model.OrderDetail;
import com.niit.model.OrderItem;
import com.niit.model.Product;


public class OrderItemUnitTest {
	
	static OrderItemDAO orderItemDAO;

	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		orderItemDAO=(OrderItemDAO)context.getBean("orderItemDAO");
	}
	
	@Test
	public void addorderItemTest()
	{
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setCartId(1010);
		orderDetail.setOrderDate(new Date());
		orderDetail.setUsername("Vicky");
		orderDetail.setTotalAmount(1000);
		orderDetail.setShippingAddress("Rajajipuram");
		orderDetail.setTransactionType("CC");
		
		
		Product product=new Product();
		product.setproductName("Book Cupboard");
		product.setCategoryId(4);
		product.setproductDesc("All the Book Cupboard Types");
		product.setSuplierId(44);
		product.setproductPrice(100);
		product.setStock(4);
		
		/*OrderItem orderItem=new OrderItem();
		orderItem.setOderid(1);
		orderItem.setOrderDetail(orderDetail);
		orderItem.setProduct(product);
		orderItem.setProductCount(2);
		orderItem.setQuantity(3);
		orderItem.setSuplierName("Sonu");
		orderItem.setTotalAmount(1200);
		assertTrue("Problem in Category Insertion",orderItemDAO.addorderItem(orderItem));	*/	
	}


}
