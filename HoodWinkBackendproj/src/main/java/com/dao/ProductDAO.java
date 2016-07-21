package com.dao;

import java.util.List;

//import com.model.Category;
import com.model.Product;
import com.model.Supplier;

public interface ProductDAO {
	public List<Product> list();

	public Product get(String productid);

	

	public void saveOrUpdate(Product product);

	public void update(Product product);

	public void delete(String productid);
}
