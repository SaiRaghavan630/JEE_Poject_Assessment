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

import com.example.demo.entity.Orders;
import com.example.demo.entity.Products;

@Controller
public class OrdersController {
	@Autowired
	private RestTemplate template;
	@Autowired
	private Orders order;
	public OrdersController(Orders order) {
		super();
		this.order=order;
	}
	@GetMapping(path = "/orders")
	public String Orders() {
		return "orders";
	}
	@GetMapping(path="/orders/show-orders-by-order-person")
	public String ShowOrdersByUser() {
		return "show-orders-by-order-person";
	}
	
	@RequestMapping(path="/orders/show-orders-by-order-person",method = RequestMethod.POST)
	public String ShowOrdersByUser(Model model,@RequestParam("orderPerson") String orderPerson) {
		model.addAttribute("list",template.getForObject("http://localhost:4050/list/"+orderPerson,Orders[].class));
		return "show-orders-by-order-person";
	}
	
	@GetMapping(path = "/orders/add-order")
	public String AddOrder(Model model) {
		model.addAttribute("command",order);
		model.addAttribute("list",template.getForObject("http://localhost:4040/list/available",Products[].class));
		return "add-order";
	}
	@RequestMapping(path="/orders/add-order",method = RequestMethod.POST)
	public String AddOrder(@ModelAttribute("command") Orders obj,Model model) {
		model.addAttribute("list",template.getForObject("http://localhost:4040/list/available",Products[].class));
		template.postForLocation("http://localhost:4050/save", obj);
		model.addAttribute("message","product added");
		return "add-order";
	}
	
	@GetMapping(path="/orders/show-order-by-order-id")
	public String ShowOrderByOrderId() {
		return "show-order-by-order-id";
	}
	

	@RequestMapping(path="/orders/show-order-by-order-id",method = RequestMethod.POST)
	public String ShowOrderByOrderId(Model model,@RequestParam("orderId") int orderId) {
		model.addAttribute("list",template.getForObject("http://localhost:4050/"+orderId,Orders[].class));
		return "show-order-by-order-id";
	}
	
	@GetMapping(path="/orders/update-order")
	public String UpdateOrder(Model model){
		model.addAttribute("command",order);
		model.addAttribute("list",template.getForObject("http://localhost:4040/list/available",Products[].class));
		return "update-order";
	}
	
	@RequestMapping(path="/orders/update-order",method = RequestMethod.POST)
	public String SubmitUpdateOrder(@ModelAttribute("command") Orders obj,Model model) {
		model.addAttribute("list",template.getForObject("http://localhost:4040/list/available",Products[].class));
		template.postForLocation("http://localhost:4050/save", obj);
		model.addAttribute("message","order updated");
		return "update-order";
	}
}









