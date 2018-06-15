package com.niit.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class Product {

	@Id
	@GeneratedValue

	private int productId;
	
	@Temporal(TemporalType.TIME)
	Date offerTime;
	public Date getOfferTime() {
		return offerTime;
	}

	public void setOfferTime(Date offerTime) {
		this.offerTime = offerTime;
	}

	private int productPrice;

	@NotBlank(message = "Product Name cannot be blank !")
	private String productName;

	@NotBlank(message = "Product Description cannot be blank !")
	private String productDesc;

	private int categoryId;

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	private int suplierId;

	private int stock;

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	@Transient
	private MultipartFile pimage;

	public MultipartFile getPimage() {
		return pimage;
	}

	public void setPimage(MultipartFile pimage) {
		this.pimage = pimage;
	}

	public int getproductId() {
		return productId;
	}

	public void setproductId(int productId) {
		this.productId = productId;
	}

	public String getproductName() {
		return productName;
	}

	public void setproductName(String productName) {
		this.productName = productName;
	}

	public String getproductDesc() {
		return productDesc;
	}

	public void setproductDesc(String productDesc) {
		this.productDesc = productDesc;
	}

	public int getproductPrice() {
		return productPrice;
	}

	public void setproductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getSuplierId() {
		return suplierId;
	}

	public void setSuplierId(int suplierId) {
		this.suplierId = suplierId;
	}

}