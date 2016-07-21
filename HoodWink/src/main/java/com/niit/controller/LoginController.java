
package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.*;
import com.model.User;


@Controller
public class LoginController {

	@Autowired
	UserDAO login;

	@RequestMapping(value="/isValidUser", method = RequestMethod.POST)
	public String showMessage(@RequestParam(value = "username") String name,
			@RequestParam(value = "password") String password,Model model) {
			System.out.println("controller working");
		String message;
	
		if (login.isValidUser(name,password)) {
			System.out.println("controller working");
			message = "Valid credentials";
			model.addAttribute("name",name);
			model.addAttribute("username", "true");
			return "redirect:/home";
		} else {
			message = "Invalid credentials";
			model.addAttribute("message",message);
			return "signin";
		}

		
	}
		@RequestMapping("adminhome")
	public ModelAndView onLoadAdminHome()
	{
		ModelAndView mv=new ModelAndView("adminhome");
	
		return mv;
	}
	@RequestMapping("signin")
	public ModelAndView onLoadSignin()
	{
		ModelAndView mv=new ModelAndView("signin");
	
		return mv;
	}

	@RequestMapping(value="/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute User user) {
		
		String msg;
		ModelAndView mv;
		login.saveOrUpdate(user);
		msg="Registered successfully";
	    
	  mv= new ModelAndView("signin");
	  mv.addObject("msg", msg);
	  return mv;
	  
	 }

}
