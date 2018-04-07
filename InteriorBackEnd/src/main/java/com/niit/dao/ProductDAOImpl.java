package com.niit.dao;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	//addProduct
	@Transactional
	@Override
	public boolean addProduct(Product product) 
	{	
		try
		{
		sessionFactory.getCurrentSession().save(product);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}
	
	//getProduct()
		@Override
		public Product getProduct(int productId) 
		{
			Session session=sessionFactory.openSession();
			Product product=(Product)session.get(Product.class,productId);
			session.close();
			return product;
		}

		//deleteProduct()
		@Transactional
		@Override
		public boolean deleteProduct(Product product) 
		{
			try
			{
				sessionFactory.getCurrentSession().delete(product);
				return true;
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised:"+e);
				return false;
			}
			
		}
		
		//updateProduct()
		@Transactional
		@Override
		public boolean updateProduct(Product product) 
		{
			try
			{
				System.out.println("update Product set categoryId="+product.getCategoryId()+", productDesc="+product.getproductDesc()+", productName="+product.getproductName()+", productPrice="+product.getproductPrice()+", stock="+product.getStock()+", suplierId="+product.getSuplierId()+"  where productId="+product.getproductId()+"");
				sessionFactory.getCurrentSession().update(product);
				System.out.println("test");
				return true;
			}
			catch(Exception e)
			{
				System.out.println("failtest");
				System.out.println("Exception Arised:"+e);
				return false;
			}
		
		}

		//listProducts()	
		@SuppressWarnings("unchecked")
		@Override
		public List<Product> getProducts() 
		{
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Product");
			List<Product> listProducts=(List<Product>)query.list();
			return listProducts;
		}

		@Override
		public List<Product> getProductByCategory(int categoryId) {
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Product where categoryId=:categoryId").setParameter("categoryId", categoryId);
			List<Product> listProducts=(List<Product>)query.list();
			return listProducts;
		}

		@Override
		public List<Product> getBySearch(String search) {
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Product WHERE productDesc LIKE '"+search+"%' OR productDesc LIKE '%"+search+"%' OR productDesc LIKE '%"+search+"' OR productName LIKE '%"+search+"' OR productName LIKE '%"+search+"%' OR productName LIKE '%"+search+"' OR productPrice LIKE '"+search+"%' OR productPrice LIKE '%"+search+"%' OR productPrice LIKE '%"+search+"'");
			List<Product> listProducts=(List<Product>)query.list();
			return listProducts;
		}
}