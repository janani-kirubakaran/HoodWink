package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dao.SupplierDAO;
import com.google.gson.Gson;
//import com.model.Category;
import com.model.Supplier;


@Controller
public class SupplierController {
	@Autowired
	private SupplierDAO supplierDAO;
	@RequestMapping("addSupplier")
	public ModelAndView addCategory(@ModelAttribute Supplier supplier) {
		supplierDAO.saveOrUpdate(supplier);
		//List<Supplier> supplierlist = supplierDAO.list();
		ModelAndView mv = new ModelAndView("supplierList");
		//mv.addObject("supplierList", supplierlist);
		return mv;
	
	}

	@RequestMapping("deleteSupplier/{supplierid}")
	public @ResponseBody ModelAndView deleteSuppliers(@PathVariable(value = "supplierid") String supplierid,@ModelAttribute Supplier supplier,BindingResult result) {
		System.out.println("delete supplier");
		supplierDAO.delete(supplierid);
		//List<Supplier> supplierlist = supplierDAO.list();
		//ModelAndView mv = new ModelAndView("supplierList");
		//mv.addObject("supplierList", supplierlist);
		return new ModelAndView("supplierList");
		
	}

	@RequestMapping("getAllSupplier")
	public ModelAndView getAllSupplier() {

		System.out.println("getAllSupplier");
		//List<Supplier> supplierlist = supplierDAO.list();
		 ModelAndView mv = new ModelAndView("supplierList");
		//mv.addObject("supplierList", supplierlist);
		return mv;
		
	}
	@RequestMapping(value="listSupplier",method= RequestMethod.GET)
	public @ResponseBody String getGsons()
	{
		Gson gson = new Gson();
	System.out.print("gson");
	List<Supplier> supplierList = supplierDAO.list();
		String sdata = gson.toJson(supplierList);
	    return sdata;
	}


	@RequestMapping(value = "editSupplier")
	public ModelAndView edit() {

		System.out.println("editCategories");

		//List<Supplier> supplierlist = supplierDAO.list();

		ModelAndView mv = new ModelAndView("updateSupplier");
		//mv.addObject("supplierList", supplierlist);
		return mv;
	
	}

	@RequestMapping(value = "updateSupplier", method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute Supplier supplier) {
		System.out.println("controller updation");
		supplierDAO.update(supplier);
		System.out.println("updated");
		//List<Supplier> supplierlist = supplierDAO.list();
		ModelAndView mv = new ModelAndView("supplierList");
		//mv.addObject("supplierList", supplierlist);
		return mv;
	}
	@RequestMapping("admin")
	public ModelAndView goTOAdmin()
	{
		return new ModelAndView("adminhome");
	}



}
