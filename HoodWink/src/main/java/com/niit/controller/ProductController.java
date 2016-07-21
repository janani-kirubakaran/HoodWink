package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dao.CategoryDAO;
import com.dao.ProductDAO;
import com.dao.SupplierDAO;
import com.google.gson.Gson;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;
import com.model.UtilClass;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	@Autowired(required=true)
	private CategoryDAO categoryDAO;

	@Autowired(required=true)
	private SupplierDAO supplierDAO;
	@RequestMapping(value="listProduct",method= RequestMethod.GET)
	public @ResponseBody String getGsons()
	{
		Gson gson = new Gson();
	System.out.print("gson");
	List<Product> productList = productDAO.list();
		 String pdata = gson.toJson(productList);
	    return pdata;
	}
	@RequestMapping("/product/add")
	public String addProduct(@ModelAttribute("product") Product product) {
		Category category = categoryDAO.get(product.getCategory().getCategoryid());
		categoryDAO.saveOrUpdate(category);  

		Supplier supplier = supplierDAO.get(product.getSupplier().getSupplierid());
		supplierDAO.saveOrUpdate(supplier); 
		
		UtilClass util=new UtilClass();
		String id=util.replace(product.getProductid(), ",", "");
		product.setProductid(id);
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategoryid(category.getCategoryid());
		product.setSupplierid(supplier.getSupplierid());
		productDAO.saveOrUpdate(product);
		return "redirect:/getAllProduct";
		
	
	 }
	@RequestMapping("product/get/{productid}")
	public String getSelectedProduct(@PathVariable("productid") String productid, RedirectAttributes redirectAttributes) {
		System.out.println("getSelectedProduct");
		redirectAttributes.addFlashAttribute("selectedProduct", this.productDAO.get(productid));
	//	model.addAttribute("categoryList", this.categoryDAO.list());
	//model.addAttribute("clickedProductViews", "true");
		return "redirect:/backToHome";
	
	}
	@RequestMapping(value="/backToHome",method=RequestMethod.GET)
	public String backToHome(@ModelAttribute("selectedProduct") final Object selectedProduct,Model model)
	{
		model.addAttribute("selectedProduct",selectedProduct);
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("clickedProductViews", "true");
		return "home";
	}
	@RequestMapping("singleProductView")
	public ModelAndView adProducts() {
		
		//productDAO.saveOrUpdate(product);
         //List<Product> productlist = productDAO.list();
		
		ModelAndView mv = new ModelAndView("singleProductView");
		//mv.addObject("productList", productlist);
		return mv;
	 }
	

		
	
	/**
	 * 
	 * @param productid
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("deleteProduct")
    public String deleteSupplier(@RequestParam(name = "delete")  String productid) throws Exception{
		
       try {
    	   System.out.println("deleted");
		productDAO.delete(productid);
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
   
        return "redirect:/getAllProduct";
    }
 
	@RequestMapping("getAllProduct")
	public String getAllProducts(Model model) {

		System.out.println("getAllProducts");

		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("clickedProduct","true");
 return "adminhome";
			}

	
	@RequestMapping(value = "editProduct/{productid}")
	public String edit(@PathVariable("productid") String productid,Model model) {

		try {
			System.out.println("editProducts");
			System.out.println("editProduct");
			
			model.addAttribute("listProducts", this.productDAO.list());
			model.addAttribute("categoryList", this.categoryDAO.list());
			model.addAttribute("supplierList", this.supplierDAO.list());

			model.addAttribute("product", this.productDAO.get(productid));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       		return "productList";
	
	}
	
}
