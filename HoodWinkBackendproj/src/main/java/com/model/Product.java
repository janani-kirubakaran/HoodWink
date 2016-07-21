package com.model;

//import java.util.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "product")
@Component
public class Product {
	
	private String name;
	private String description;
	
private String categoryid;
private String supplierid;
	@ManyToOne
	@JoinColumn(name="categoryid",nullable=false,updatable=false,insertable=false)
	private Category category;
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@ManyToOne
	@JoinColumn(name="supplierid",nullable=false,updatable=false,insertable=false)
	private Supplier supplier;
	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public String getCategoryid() {
	return categoryid;
}

public void setCategoryid(String categoryid) {
	this.categoryid = categoryid;
}

public String getSupplierid() {
	return supplierid;
}

public void setSupplierid(String supplierid) {
	this.supplierid = supplierid;
}

	@Id
	private String productid;

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	private int price;
}
