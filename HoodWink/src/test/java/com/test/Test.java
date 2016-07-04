package com.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Test {

	/*
	 * private static void display(List<Category> list) { for( Category c :
	 * list) { System.out.print(c.getId() + ":"+ c.getName() +":"+
	 * c.getDescription()) ; }
	 * 
	 * }
	 */

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com");
		context.refresh();

		/*
		 * CategoryDAO categoryDAO = (CategoryDAO)
		 * context.getBean("categoryDAO");
		 * 
		 * Category c = new Category(); c.setId("MOB_001"); c.setName("Mobile");
		 * c.setDescription("mobile product"); categoryDAO.saveOrUpdate(c);
		 * 
		 * List<Category> list = categoryDAO.list();
		 * 
		 * display(list);
		 */

	}

}
