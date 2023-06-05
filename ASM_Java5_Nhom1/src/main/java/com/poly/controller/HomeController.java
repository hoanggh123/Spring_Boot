package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.constraints.RoleConstraints;
import com.poly.entity.User;
import com.poly.service.impl.UserService;
import com.poly.utils.CookieUtil;
import com.poly.utils.SessionUtil;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@Autowired
	private CookieUtil cookieUtil;

	@Autowired
	private SessionUtil sessionUtil;

	@GetMapping("/index")
	private String index() {
		return "index";
	}

	@GetMapping("/login")
	private String getFormlogin(@ModelAttribute("user") User user, Model model) {

		String email = cookieUtil.getValue("email");
		String password = cookieUtil.getValue("password");

		model.addAttribute("email", email);
		model.addAttribute("password", password);

		return "signIn_component";
	}

	@PostMapping("/login")
	private String login(@ModelAttribute("user") User user,
			@RequestParam(name = "check", defaultValue = "false") Boolean remember,Model model) {
		User u = userService.findByEmailAndPassword(user.getEmail(), user.getPassword());
		if (u != null) {
			if (u.getClient() == RoleConstraints.Client && u.getAdmin() == null & u.getSellers() == null) {
				sessionUtil.add("user", u);
				if (remember) {
					cookieUtil.add("email", u.getEmail(), 24);
					cookieUtil.add("password", u.getPassword(), 24);
				}
				model.addAttribute("user", user);

				return "index";

			} else if (u.getAdmin() == RoleConstraints.Admin && u.getSellers() == RoleConstraints.Sellers) {
				System.out.println("admin");
			}
		} else {
			System.out.println("khong co");
			return "signIn_component";
		}

		return "signIn_component";
	}

	@GetMapping("/logout")
	private String logout() {
		sessionUtil.remove("user");
		return "index";
	}

}