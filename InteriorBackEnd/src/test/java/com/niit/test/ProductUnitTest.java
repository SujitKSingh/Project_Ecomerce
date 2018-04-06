package com.niit.test;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;


public class ProductUnitTest 
{
	static ProductDAO productDAO;

	@SuppressWarnings("resource")
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		productDAO=(ProductDAO)context.getBean("productDAO");
	}
	@Ignore
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		
		product.setproductName("Book Cupboard");
		product.setCategoryId(4);
		product.setproductDesc("All the Book Cupboard Types");
		product.setSuplierId(44);
		product.setproductPrice(100);
		product.setStock(4);
		assertTrue("Problem in Product Insertion",productDAO.addProduct(product));
	}
	@Ignore
	@Test
	public void getProductByCategoryTest()
	{
		assertNotNull("Something went wrong !",productDAO.getProductByCategory(562));
	}

	@Ignore
	@Test
	public void getProductTest()
	{
		assertNotNull("Problem in get Category",productDAO.getProduct(1));
	}
	
	@Ignore
	@Test
	public void deleteProductTest()
	{
		Product product=productDAO.getProduct(5);
		assertTrue("Problem in Deletion:",productDAO.deleteProduct(product));
	}

	
	@Test
	public void updateCategoryTest()
	{
		Product product=productDAO.getProduct(44);
		product.setproductName("L Sofa Model");
		assertTrue("Problem in Updation",productDAO.updateProduct(product));
	}
	@Ignore
	@Test
	public void listProductsTest()
	{
		List<Product> listProducts=productDAO.getProducts();
		assertNotNull("No Products",listProducts);
		
		for(Product product:listProducts)
		{
			System.out.print(product.getproductId()+":::");
			System.out.print(product.getproductName()+":::");
			System.out.println(product.getproductDesc());
		}
	}

}

