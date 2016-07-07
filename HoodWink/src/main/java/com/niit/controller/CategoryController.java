package com.niit.controller;

//import java.util.ArrayList;
//import java.util.*;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDAO;
import com.model.Category;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;
	

	@RequestMapping("addCategory")
	public ModelAndView addCategory(@ModelAttribute Category category) {
		categoryDAO.saveOrUpdate(category);
		List<Category> categoryList = categoryDAO.list();
		ModelAndView mv=new ModelAndView("categorylist");
		mv.addObject("categoryList", categoryList);
		return mv;
	  //return new ModelAndView("adminhome");
	 }

	@RequestMapping("deleteCategory/{id}")
	public ModelAndView deleteCategory(@PathVariable(value="id") String id){
		categoryDAO.delete(id);
		List<Category> categoryList = categoryDAO.list();
		ModelAndView mv=new ModelAndView("categorylist");
		mv.addObject("categoryList", categoryList);
		return mv;
		//return new ModelAndView("categorylist","categoryList",categoryList);
	 // return new ModelAndView("redirect:categorylist");
	 }

		
	@RequestMapping("getAllCategories")
	public ModelAndView getAllCategories() {

		System.out.println("getAllCategories");
		
		List<Category> categoryList = categoryDAO.list();
		
		//ModelAndView mv = new ModelAndView("categorylist");
		//mv.addObject("categoryList", categoryList);

		return new ModelAndView("categorylist","categoryList",categoryList);
	}
	@RequestMapping(value="editCategory")  
    public ModelAndView edit() {

		System.out.println("getAllCategories");
		
		List<Category> categoryList = categoryDAO.list();
		
		ModelAndView mv = new ModelAndView("updateCategory");
		mv.addObject("categoryList", categoryList);
        return mv;
		//return new ModelAndView("categorylist","categoryList",categoryList);
	} /*edit(@PathVariable(value="id") String id){  
		Category categoryList = categoryDAO.get(id);
		ModelAndView mv=new ModelAndView("redirect:/updateCategory");
		mv.addObject("category", categoryList);
		return mv;
        //Category category=categoryDAO.get(id);  
        //return new ModelAndView("updateCategory","editcategory",category);  
    }  */
	@RequestMapping(value="updateCategories",method = RequestMethod.POST)  
    public ModelAndView editsave(@ModelAttribute Category category){ 
		System.out.println("controller updation");
        categoryDAO.update(category);  
        System.out.println("updated");
        List<Category> categoryList = categoryDAO.list();
		ModelAndView mv=new ModelAndView("categorylist");
		mv.addObject("categoryList", categoryList);
		return mv;
        //return new ModelAndView("redirect:/categorylist");  
    }  
	
}
