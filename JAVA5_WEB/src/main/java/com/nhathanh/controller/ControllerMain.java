package com.nhathanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ControllerMain {
	@RequestMapping("index")
	public String index() {
		return "index";
	}
	@RequestMapping("category")
	public String about() {
		return "category_component";
	}
	@RequestMapping("contact")
	public String contact() {
		return "contact_component";
	}
	@RequestMapping("shopping")
	public String feedback() {
		return "shopping_component";
	}
	@RequestMapping("login")
	public String faq() {
		return "signIn_component";
	}
	
	@RequestMapping("register")
	public String faq2() {
		return "register_component";
	}
}