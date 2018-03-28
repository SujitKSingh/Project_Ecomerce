package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class MultiImage {
	
	/*@Id
	@GeneratedValue*/
	private int imageId;
	private int imageName;
/*	@ManyToOne
*/	
	
	private Product prod;

}
