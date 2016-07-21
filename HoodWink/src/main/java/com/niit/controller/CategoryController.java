package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDAO;
import com.google.gson.Gson;
import com.model.*;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;

	@Qualifier(value = "categoryDAO")
	public void setCategoryDAO(CategoryDAO ps) {
		this.categoryDAO = ps;
	}

	@RequestMapping("home")
	public ModelAndView onLoadHome(Model model)
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		//model.addAttribute("cartSize", this.cartDAO.list().size());
		ModelAndView mv=new ModelAndView("home");
		mv.addObject("clickedHome","true");
		return mv;
	}

	@RequestMapping("deleteCategory")
	public String deleteCategory(@RequestParam(name = "delete")  String categoryid) {
		categoryDAO.delete(categoryid);
		// List<Category> categoryList = categoryDAO.list();
		return "redirect:/getAllCategory";
		// return new ModelAndView("categorylist","categoryList",categoryList);
		// return new ModelAndView("redirect:categorylist");
	}

	@RequestMapping(value = "getAllCategory", method = RequestMethod.GET)
	public String getCategory(Model model) {

		System.out.println("getAllCategories");

		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("clickedCategory", "true");
		return "adminhome";
	}

	@RequestMapping("admin")
	public ModelAndView goTOAdmin() {
		return new ModelAndView("adminhome");
	}

	

	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category) {
		try {
			UtilClass util = new UtilClass();
			String id = util.replace(category.getCategoryid(), ",", "");
			category.setCategoryid(id);
			categoryDAO.saveOrUpdate(category);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/getAllCategory";
	}
	@RequestMapping(value = "listCategory", method = RequestMethod.GET)
	public @ResponseBody String getGsons() {
		Gson gson = new Gson();
		System.out.print("gson");
		List<Category> categoryList = categoryDAO.list();
		String cdata = gson.toJson(categoryList);
		return cdata;
	}
	@RequestMapping(value = "editCategory/{categoryid}", method = RequestMethod.GET)
	public String edit(@PathVariable("categoryid") String categoryid, Model model) {

		System.out.println("editCategories");
		System.out.println("editCategory");
		model.addAttribute("category", this.categoryDAO.get(categoryid));
		model.addAttribute("listCategorys", this.categoryDAO.list());
		return "categorylist";
		
	}

	

}
