package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AppController {

	@GetMapping("/home")
	public String homePage(Model model){
		return "home";
	}
}


