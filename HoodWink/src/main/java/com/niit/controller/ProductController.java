package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.ProductDAO;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;


@Controller
public class ProductController {
	@Autowired
	private ProductDAO productDAO;
	

	@RequestMapping("addProduct")
	public ModelAndView addProduct(@ModelAttribute Product product) {
		
		productDAO.saveOrUpdate(product);
         List<Product> productlist = productDAO.list();
		
		ModelAndView mv = new ModelAndView("productList");
		mv.addObject("productList", productlist);
		return mv;
	 }
	@RequestMapping("getcs")
	public ModelAndView getIds(@ModelAttribute Product product )
	{
		List<Category> categoryids=productDAO.getByCategoryID();
		List<Supplier> supplierids=productDAO.getBySupplierID();
		ModelAndView mv=new ModelAndView("addProduct");
		mv.addObject("categoryid",categoryids);
		mv.addObject("supplierid",supplierids);
		return mv;
	}
	@RequestMapping("deleteProduct/{id}")
	public ModelAndView deleteSuppliers(@PathVariable(value = "id") String id) {
		System.out.println("delete supplier");
		productDAO.delete(id);
		List<Product> productlist = productDAO.list();
		ModelAndView mv = new ModelAndView("productList");
		mv.addObject("productList", productlist);
		return mv;
	}	
	
	@RequestMapping("/getAllProduct")
	public ModelAndView getAllProducts() {

		System.out.println("getAllProducts");
		
		List<Product> productlist = productDAO.list();
		
		ModelAndView mv = new ModelAndView("productList");
		mv.addObject("productList", productlist);

		return mv;
	}
	@RequestMapping(value = "editProduct")
	public ModelAndView edit() {

		System.out.println("editProducts");


		List<Category> categoryids=productDAO.getByCategoryID();
		List<Supplier> supplierids=productDAO.getBySupplierID();
		//List<Product> productlist = productDAO.list();
		//Product product=productDAO.get(id);
		ModelAndView mv = new ModelAndView("updateProduct");
		//mv.addObject("productList", productlist);
		mv.addObject("categoryid",categoryids);
		mv.addObject("supplierid",supplierids);
	  //  mv.addObject("product",product);
		return mv;
	
	}

	@RequestMapping(value = "updateProduct", method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute Product product) {
		System.out.println("controller updation");
		productDAO.update(product);
		System.out.println("updated");
		List<Product> productlist = productDAO.list();

		ModelAndView mv = new ModelAndView("productList");
		mv.addObject("productList", productlist);		
		return mv;
	}


	

}
