package com.niit.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.SupplierDAO;
import com.google.gson.Gson;
import com.model.Supplier;
import com.model.UtilClass;

@Controller
public class SupplierController {
	
	private SupplierDAO supplierDAO;
	
	@Autowired
	@Qualifier(value="supplierDAO")
	public void setSupplierDAO(SupplierDAO ps){
		this.supplierDAO = ps;
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
	
	@RequestMapping(value = "getAllSupplier", method = RequestMethod.GET)
	public String listCategorys(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("clickedSupplier", "true");
		return "adminhome";
	}
	
	
	@RequestMapping(value= "/supplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier){
		UtilClass util=new UtilClass();
		String id=util.replace(supplier.getSupplierid(), ",", "");
		supplier.setSupplierid(id);
	
			supplierDAO.saveOrUpdate(supplier);
		
		return "redirect:/getAllSupplier";

	}
	@RequestMapping("remove/{supplierid}")
    public String deleteSupplier(@PathVariable("supplierid") String supplierid,ModelMap model) throws Exception{
		
       try {
		supplierDAO.delete(supplierid);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/getAllSupplier";
    }
 
    @RequestMapping("edit/{supplierid}")
    public String editSupplier(@PathVariable("supplierid") String supplierid,Model model){
    	try {
			System.out.println("editSupplier");
			model.addAttribute("supplier", this.supplierDAO.get(supplierid));
			model.addAttribute("supplierList", this.supplierDAO.list());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "supplierList";
    }
	}











