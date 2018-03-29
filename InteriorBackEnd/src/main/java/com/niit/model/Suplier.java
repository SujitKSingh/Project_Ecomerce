package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table
public class Suplier 
{
	@Id
	@GeneratedValue
	private int suplierId;
	
	@NotBlank(message="Supplier Name cannot be blank !")
	private String suplierName;
	
	@NotBlank(message="Supplier Description cannot be blank !")
	private String suplierDesc;
	
	public int getsuplierId() 
	{
		return suplierId;
	}
	public void setsuplierId(int suplierId) 
	{
		this.suplierId = suplierId;
	}
	public String getsuplierName() 
	{
		return suplierName;
	}
	public void setsuplierName(String suplierName) 
	{
		this.suplierName = suplierName;
	}
	public String getsuplierDesc() 
	{
		return suplierDesc;
	}
	public void setSuplierDesc(String suplierDesc) 
	{
		this.suplierDesc = suplierDesc;
	}
}