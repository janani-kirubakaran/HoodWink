package com.dao;

import java.util.List;

import com.model.User;

public interface UserDAO {

	public List<User> list();

	public User get(String username);

	public void saveOrUpdate(User user);

	public void delete(String username);

	public boolean isValidUser(String username, String password);

}
