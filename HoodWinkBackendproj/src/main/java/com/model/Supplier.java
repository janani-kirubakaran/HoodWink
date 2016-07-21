package com.model;

//import java.util.ArrayList;
//import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.FetchType;
import javax.persistence.Id;
//import javax.persistence.OneToMany;

import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "SUPPLIER")
@Component
public class Supplier {
	@Id
	@Column(name="supplierid")
	private String supplierid;
	private String name;
	private String address;
	private String emailid;
	private int contactnumber;
	//private Set<Product> product;
	
	/*@OneToMany(mappedBy="supplier",fetch=FetchType.EAGER)
	

	public Set<Product> getProduct() {
		return product;
	}
	public void setProduct(Set<Product> product) {
		this.product = product;
	}*/
	public String getSupplierid() {
		return supplierid;
	}
	public void setSupplierid(String supplierid) {
		this.supplierid = supplierid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public int getContactnumber() {
		return contactnumber;
	}
	public void setContactnumber(int contactnumber) {
		this.contactnumber = contactnumber;
	}
}
