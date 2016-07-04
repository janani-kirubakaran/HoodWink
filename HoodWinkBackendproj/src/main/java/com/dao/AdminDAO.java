package com.dao;

import java.util.*;

import com.model.Admin;


public interface AdminDAO {

	public List<Admin> adminlist();

	public Admin get(String adminname);

	public void adminSaveOrUpdate(Admin admin);

	public void adminDelete(String adminname);

	public boolean isValidAdmin(String adminname, String password);
}
