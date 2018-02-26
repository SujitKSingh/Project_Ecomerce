package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Product 
{
	@Id
	@GeneratedValue
	private int productId;
	private int  productPrice;
	private String productName;
	private String productDesc;
	private int categoryId;
	public int getproductId() 
	{
		return productId;
	}
	public void setproductId(int productId) 
	{
		this.productId = productId;
	}
	public String getproductName() 
	{
		return productName;
	}
	public void setproductName(String productName) 
	{
		this.productName = productName;
	}
	public String getproductDesc() 
	{
		return productDesc;
	}
	
	public void setproductDesc(String productDesc) 
	{
		this.productDesc = productDesc;
	}
	
	public int getproductPrice() 
	{
		return productId;
	}
	public void setproductPrice(int productId) 
	{
		this.productId = productId;
	}
	
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
}