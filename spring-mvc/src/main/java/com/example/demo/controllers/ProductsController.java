package com.example.demo.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.example.demo.entity.Products;
@Controller
public class ProductsController {
	@Autowired
	private RestTemplate template;
	@Autowired
	private Products products;
	public ProductsController(Products products) {
		super();
		this.products =  products;
	}
	@GetMapping(path = "/products")
	public String Products() {
		return "products";
	}
	@GetMapping(path = "/products/showallproducts")
	public String getallProducts(Model model) {
		model.addAttribute("list",template.getForObject("http://localhost:4040/list",Products[].class));
		return "showallproducts";
	}
	@GetMapping(path = "/products/add-product")
	public String initPage(Model model) {
		model.addAttribute("command",products);
		return "add-product";
	}
	@RequestMapping(path = "/products/add-product",method = RequestMethod.POST)
	public String onSubmit(@ModelAttribute("command") Products obj,Model model ) {
		template.postForLocation("http://localhost:4040/save", obj);
		model.addAttribute("message","product added");
		System.out.println(obj);
		return "add-product";
	}
	@GetMapping(path = "/products/displayproductbymerchantname")
	public String ShowAllProductByMerchantName() {
		return "showallproductsbymerchantname";
	}
	@RequestMapping(path="/products/displayproductbymerchantname",method = RequestMethod.POST)
	public String ShowAllProductByMerchantName(@RequestParam("merchantName")String merchantName,Model model) {
		model.addAttribute("list",template.getForObject("http://localhost:4040/list/"+merchantName,Products[].class));
		return "showallproductsbymerchantname";
	}
	
	@GetMapping(path = "/products/update-product")
	public String updateProduct(Model model) {
		model.addAttribute("command",products);
		return "update-product";
	}
	@RequestMapping(path = "/products/update-product",method = RequestMethod.POST)
	public String OnUpdateSubmit(@ModelAttribute("command") Products obj,Model model ) {
		template.postForLocation("http://localhost:4040/save", obj);
		model.addAttribute("message","product updated");
		System.out.println(obj);
		return "update-product";
	}
	
	@GetMapping(path="/products/show-products-which-available")
    public String ShowAllAvailableProducts(Model model) {
        model.addAttribute("availableProducts",template.getForObject("http://localhost:4040/list/available",Products[].class));
        return "show-products-which-available";
    }
    
    @GetMapping(path="/products/show-products-which-not-available")
    public String ShowAllUnavailableProducts(Model model) {
        model.addAttribute("unavailableProducts",template.getForObject("http://localhost:4040/list/not-available",Products[].class));
        return "show-products-which-not-available";
    }
}






