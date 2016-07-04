package com.hoodwinkbackend;

/**
 * Unit test for simple App.
 */
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dao.AdminDAO;
import com.dao.UserDAO;
import com.model.Admin;
import com.model.User;

public class AppTest {

	static AnnotationConfigApplicationContext context;

	public AppTest() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.*");
		context.refresh();
	}

	public static void createUser(User user) {

		UserDAO userDAO = (UserDAO) context.getBean("userDAO");
		userDAO.saveOrUpdate(user);

	}
	public static void createAdmin(Admin user) {

		AdminDAO adminDAO = (AdminDAO) context.getBean("adminDAO");
		adminDAO.adminSaveOrUpdate(user);

	}

	public static void main(String[] args) {

		User user = (User) context.getBean("user");
		Admin admin = (Admin) context.getBean("admin");
		user.setUsername("NIIT");
		user.setPassword("NIIT");
		admin.setAdminname("niitadmin");
		admin.setPassword("niit");

		createUser(user);
		createAdmin(admin);

	}

}
