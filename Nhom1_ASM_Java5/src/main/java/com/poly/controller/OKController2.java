package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class OKController2 {
@ResponseBody
@RequestMapping("/home")
public String test() {
	return "Hello team";
}
}
