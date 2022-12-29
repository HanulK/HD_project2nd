package org.kabart.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	@GetMapping("/accessError")
	public void accessError(Authentication auth, Model model) {
		log.info("******************** ACCESS DENIED : " + auth + " ********************");
		model.addAttribute("msg", "Access Denied");
	}
	
	@GetMapping("/login")
	public void loginInput(String error, String logout, Model model) {
		log.info("====== Error : " + error);
		log.info("====== Logout : " + logout);
		
		// handling account error
		if(error != null) {
			model.addAttribute("error", "LOGIN ERROR check your account!");
		}
		
		// handing logout
		if(logout != null) {
			model.addAttribute("logout", "LOGOUT!!!");
		}
	}
	
	@GetMapping("/logout")
	public void logoutGet() {
		log.info("====== Logout ======");
	}
	
	@PostMapping("/logout")
	public void logoutPost() {
		log.info("====== POST CUSTOM Logout ======");
	}
	
}
