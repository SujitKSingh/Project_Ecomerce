package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table
public class Category 
{
	@Id
	@GeneratedValue
	private int categoryId;
	@NotBlank(message="Category Name cannot be blank !")
	private String categoryName;
	@NotBlank(message="Category Description cannot be blank !")
	private String cateogryDesc;
	
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	
	public String getCategoryName() 
	{
		return categoryName;
	}
	public void setCategoryName(String categoryName) 
	{
		this.categoryName = categoryName;
	}
	public String getCateogryDesc() 
	{
		return cateogryDesc;
	}
	public void setCateogryDesc(String cateogryDesc) 
	{
		this.cateogryDesc = cateogryDesc;
	}
}