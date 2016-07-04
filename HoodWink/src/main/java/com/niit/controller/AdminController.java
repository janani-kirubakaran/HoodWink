package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.AdminDAO;
import com.model.Admin;

@Controller
public class AdminController {

	@Autowired
	AdminDAO adminuser;

	@RequestMapping(value="/isValidAdmin", method = RequestMethod.POST)
	public ModelAndView showMessage(@RequestParam(value = "adminname") String name,
			@RequestParam(value = "password") String password) {
		System.out.println("admin controller");

		String message;
		ModelAndView mv;
		if (adminuser.isValidAdmin(name, password)) {
			message = "Valid credentials";
			mv = new ModelAndView("adminhome");
		} else {
			message = "Invalid credentials";
			mv = new ModelAndView("signin");
		}

		mv.addObject("message", message);
		mv.addObject("name", name);

		return mv;
	}
	@RequestMapping(value="/adminregister", method = RequestMethod.POST)
	public ModelAndView registerAdmin(@ModelAttribute Admin admin) {
		
		String msg;
		ModelAndView mv;
	   msg="Registered successfully";
	   adminuser.adminSaveOrUpdate(admin);
	  mv= new ModelAndView("signin");
	  mv.addObject("msg", msg);
	  return mv;
	  
	 }

}
