package com.hoodwinkbackend;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dao.CategoryDAO;
import com.model.Category;

public class CategoryTest {
public static void main(String[] args) {
		
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		
	@SuppressWarnings("unused")
	Category c =(Category)	  context.getBean("category");
	
	CategoryDAO categoryDAO = (CategoryDAO)  context.getBean("categoryDAO");
	
/*	
	c.setId("TAB_003");
	c.setName("Tablet");
	c.setDescription("Tablet product");
	
	
	categoryDAO.saveOrUpdate(c);
	*/
	
	
	
	List<Category>  list =    categoryDAO.list();
	
	for(Category cat : list)
	{
		System.out.println(cat.getId()  + ":" +  cat.getName()  + ":"+  cat.getDescription());
	}
		
		
	}

}
