
package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView showMessage(@RequestParam(value = "username") String name,
			@RequestParam(value = "password") String password) {
			System.out.println("controller working");
		String message;
		ModelAndView mv;
		if (login.isValidUser(name,password)) {
			System.out.println("controller working");
			message = "Valid credentials";
			mv = new ModelAndView("home");
		} else {
			message = "Invalid credentials";
			mv = new ModelAndView("signin");
		}

		mv.addObject("message", message);
		mv.addObject("name", name);

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
