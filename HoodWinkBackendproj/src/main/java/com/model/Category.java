package com.model;

import java.util.Set;

//import java.util.*;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;

import javax.persistence.Id;
//import javax.persistence.OneToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

//import com.model.Product;


@Entity
@Table(name="CATEGORY")
@Component
public class Category {

	
	@OneToMany(targetEntity=Product.class,mappedBy="category",fetch=FetchType.EAGER)
	private Set<Product> products;
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
	
		@Id
	@Column(name = "categoryid")
		private String categoryid;

	public String getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}
	private String name;
	private String description;
	
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
		

}
