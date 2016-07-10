package com.model;

//import java.util.*;

import javax.persistence.Entity;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "product")
@Component
public class Product {
	@Id
	private String id;

	private String name;
	private String description;
	private String categoryid;
	private String supplierid;
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

	/*@OneToMany
	@JoinColumn(name="id")
	private Collection<Category> categoryid = new ArrayList<Category>();

	public Collection<Category> getCategory() {
		return categoryid;
	}

	public void setCategory(Collection<Category> category) {
		this.categoryid = category;
	}

	@OneToMany
	@JoinColumn(name="supplierid")
	private Collection<Supplier> supplierid = new ArrayList<Supplier>();

	public Collection<Supplier> getSupplier() {
		return supplierid;
	}

	public void setSupplier(Collection<Supplier> supplierid) {
		this.supplierid = supplierid;
	}
*/
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	private long price;
}
