package com.niit.controller;

//import java.util.ArrayList;
//import java.util.*;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDAO;
import com.google.gson.Gson;
import com.model.Category;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping("addCategory")
	public ModelAndView addCategory(@ModelAttribute Category category) {
		categoryDAO.saveOrUpdate(category);
		List<Category> categoryList = categoryDAO.list();
		ModelAndView mv = new ModelAndView("categorylist");
		mv.addObject("categoryList", categoryList);
		return mv;
		// return new ModelAndView("adminhome");
	}

	@RequestMapping("deleteCategory/{id}")
	public ModelAndView deleteCategory(@PathVariable(value = "id") String id) {
		categoryDAO.delete(id);
		List<Category> categoryList = categoryDAO.list();
		ModelAndView mv = new ModelAndView("categorylist");
		mv.addObject("categoryList", categoryList);
		return mv;
		// return new ModelAndView("categorylist","categoryList",categoryList);
		// return new ModelAndView("redirect:categorylist");
	}

	@RequestMapping("getAllCategories")
	public ModelAndView getAllCategories() {

		System.out.println("getAllCategories");

		List<Category> categoryList = categoryDAO.list();

		// ModelAndView mv = new ModelAndView("categorylist");
		// mv.addObject("categoryList", categoryList);

		return new ModelAndView("categorylist", "categoryList", categoryList);
	}
	/*@RequestMapping("getAllCategories")
	public String getCategory(
	        @ModelAttribute Category category,Model model){

		System.out.println("getAllCategories");
 
		List<Category> categoryList = categoryDAO.list();
	//	model.addAttribute("category",this.categoryDAO.get(id));
		model.addAttribute("categoryList", categoryList);
		return "categorylist";

		// ModelAndView mv = new ModelAndView("categorylist");
		// mv.addObject("categoryList", categoryList);

		//return new ModelAndView("categorylist", "categoryList", categoryList);
	}*/
	@ResponseBody
public String getGsons()
{
	Gson gson = new Gson();
	String jsonString = gson.toJson(categoryDAO.list());
    return jsonString;
}

	@RequestMapping(value = "editCategory")
	public ModelAndView edit() {

		System.out.println("editCategories");

		List<Category> categoryList = categoryDAO.list();

		ModelAndView mv = new ModelAndView("updateCategory");
		mv.addObject("categoryList", categoryList);
		return mv;
		// return new ModelAndView("categorylist","categoryList",categoryList);
	}

	@RequestMapping(value = "updateCategories", method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute Category category) {
		System.out.println("controller updation");
		categoryDAO.update(category);
		System.out.println("updated");
		List<Category> categoryList = categoryDAO.list();
		ModelAndView mv = new ModelAndView("categorylist");
		mv.addObject("categoryList", categoryList);
		return mv;
		// return new ModelAndView("redirect:/categorylist");
	}

}
