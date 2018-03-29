package com.niit.model;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class Product 
{

	@Id
	@GeneratedValue
	
	private int productId;
	
	@Range(min=1,message="Product Price value can not be 0")
	private int  productPrice;
	
	@NotBlank(message="Product Name cannot be blank !")
	private String productName;
	
	@NotBlank(message="Product Description cannot be blank !")
	private String productDesc;
	
	private int categoryId;
	private int suplierId;
	
	
	@Range(min=1,message="Stock value can not be 0")
	private int stock;
	
	
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	/*@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "pimage", joinColumns = { @JoinColumn(name = "PRODUCT_ID") }, inverseJoinColumns = { @JoinColumn(name = "PRODUCT_ID") })
	
	private List<MultipartFile> multiimages= pimage;*/
	@Transient
	private MultipartFile pimage;
		
	public MultipartFile getPimage() {
		return pimage;
	}
	public void setPimage(MultipartFile pimage) {
		this.pimage = pimage;
	}
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
		return productPrice;
	}
	public void setproductPrice(int productPrice) 
	{
		this.productPrice = productPrice;
	}
	
	public int getSuplierId() {
		return suplierId;
	}
	public void setSuplierId(int suplierId) {
		this.suplierId = suplierId;
	}
}