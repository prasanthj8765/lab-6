package com.vishal.gl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping("/")
	public String showHome() {
		return "home";
	}
	@GetMapping("/systems")
	public String showSystems() {
		return "systems";
	}
	@GetMapping("/leaders")
	public String showLeaders() {
		return "leaders";
	}


}
