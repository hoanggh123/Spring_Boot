package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OkController {
	@RequestMapping("/about")
	public String index() {
		//Gọi file index
		return "about";
	}
}

