package com.dao;

import java.util.List;

import com.model.Category;

public interface CategoryDAO {

	public List<Category> list();

	public Category get(String categoryid);
	public Category getByName(String name);

	public void saveOrUpdate(Category category);
public void update(Category category);
	
	public void delete(String categoryid);
}
