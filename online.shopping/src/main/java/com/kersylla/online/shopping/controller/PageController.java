package com.kersylla.online.shopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kersylla.sopping_backend.dao.CategoryDAO;


@Controller
public class PageController {
    
	@Autowired
	private CategoryDAO categoryDAO;
	@RequestMapping(value={"/","home","index"})
	public ModelAndView index(){
		ModelAndView page =new ModelAndView("page");
		page.addObject("title", "Home");
		page.addObject("userClickHome", true);
		page.addObject("categories",categoryDAO.listCategories());
		return page;
		
	}
	
	@RequestMapping(value="/about")
	public ModelAndView about(){
		ModelAndView page =new ModelAndView("page");
		page.addObject("title", "About Us");
		page.addObject("userClickAbout", true);
		return page;
		
	}
	
	@RequestMapping(value="/listproducts")
	public ModelAndView productList(){
		ModelAndView page =new ModelAndView("page");
		page.addObject("title", "List Products");
		page.addObject("userClickListProducts", true);
		return page;
		
	}
	
	@RequestMapping(value="/contact")
	public ModelAndView contact(){
		ModelAndView page =new ModelAndView("page");
		page.addObject("title", "Contact Us");
		page.addObject("userClickContact", true);
		return page;
		
	}
}
