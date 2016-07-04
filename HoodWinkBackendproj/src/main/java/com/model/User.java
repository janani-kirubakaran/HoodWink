package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "user")
@Component
public class User {

	@Id
	@Column(name = "email")
	private String email;
	private String username;
	private String password;
	private String address;
	private int contact_number;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getContact_number() {
		return contact_number;
	}

	public void setContact_number(int contact_number) {
		this.contact_number = contact_number;
	}
	

	

}