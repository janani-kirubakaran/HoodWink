package com.niit.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.*;
import com.model.*;



@Controller
public class CartController {
	
	
	@Autowired(required=true)
	private CartDAO cartDAO;
	
	@Autowired(required=true)
	private ProductDAO productDAO;
	
	@Autowired(required=true)
	private CategoryDAO categoryDAO;

	
	@RequestMapping(value = "myCart", method = RequestMethod.GET)
	public String myCart(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());
	
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.list());
		model.addAttribute("totalAmount", cartDAO.getTotalAmount("user")); // Just to test, passwrdo user
		model.addAttribute("displayCart", "true");
		return "home";
	}
	
	
		
	@RequestMapping(value= "/cart/add/{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id,@RequestParam(value="username") String username,@RequestParam(value="quantity")int quantity){
		
	
	 Product product =	 productDAO.get(id);
	 Cart cart = new Cart();
	 cart.setPrice(product.getPrice());
	 cart.setProductName(product.getName());
	 cart.setQuantity(quantity);
	 cart.setUserName(username);
	 cart.setStatus('N');
		cartDAO.saveOrUpdate(cart);
		//return "redirect:/views/home.jsp";
		return "redirect:/home";
		
	}
	
	@RequestMapping("cart/remove/{id}")
    public String removeCart(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
		cartDAO.delete(id);
		model.addAttribute("message","Successfully removed");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/home";
    }
 
    @RequestMapping("cart/edit/{id}")
    public String editCart(@PathVariable("id") String id, Model model){
    	System.out.println("editCart");
        model.addAttribute("cart", this.cartDAO.get(id));
        model.addAttribute("listCarts", this.cartDAO.list());
        return "cart";
    }
    @RequestMapping("CartView")
	public ModelAndView adProducct() {
		
		//productDAO.saveOrUpdate(product);
         //List<Product> productlist = productDAO.list();
		
		ModelAndView mv = new ModelAndView("CartView");
		//mv.addObject("productList", productlist);
		return mv;
	 }
	}
