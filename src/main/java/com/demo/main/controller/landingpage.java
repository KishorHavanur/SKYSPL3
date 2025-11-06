package com.demo.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class landingpage {
	@GetMapping("/")
	public String showlanding() {
		return "landingpage";
	}
}
