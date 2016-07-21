package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String showMessage(@RequestParam(value = "adminname") String name,
			@RequestParam(value = "password") String password,Model model) {
		System.out.println("admin controller");

		String message;
	
		if (adminuser.isValidAdmin(name, password)) {
			message = "Valid credentials";
			model.addAttribute("adminname", "true");
			model.addAttribute("name",name);
			return "adminhome";
		} else {
			message = "Invalid credentials";
			model.addAttribute("message",message);
			return "signin";
		}
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
@RequestMapping(value="addAdmin",method = RequestMethod.GET)
public String addAdmins(Model model)
{
	model.addAttribute("clickedAddAdmin","true");
	return "adminhome";
}
}
