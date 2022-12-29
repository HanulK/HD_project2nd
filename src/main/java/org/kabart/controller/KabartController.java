package org.kabart.controller;

import org.kabart.domain.MemberVO;
import org.kabart.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/kabart")
public class KabartController {
	
	@Setter (onMethod_ = @Autowired)
	private MemberService service;
	
	@GetMapping("/home")
	public void home() {}
	
	@GetMapping("/login")
	public void login(String error, String logout, Model model) {
		log.warn("###### Error : " + error);
		log.warn("###### Logout : " + logout);
		
		// handling account error
		if(error != null) {
			model.addAttribute("error", "LOGIN ERROR check your account!");
		}
		
		// handing logout
		if(logout != null) {
			model.addAttribute("logout", "LOGOUT!!!");
		}
	}
	
//	@PostMapping("/login")
//	public void loginPost() {
//		
//	}
	
	@GetMapping("/logout")
	public String logoutGet() {
		log.warn("###### Logout");
		return "redirect:/kabart/home";
	}
	
	@PostMapping("/logout")
	public void logoutPost() {
		log.warn("###### POST kabart Logout");
	}
	
	@GetMapping("/join")
	public void joinGet() { }
	
	
	@PostMapping(value="/join", produces = MediaType.APPLICATION_JSON_VALUE) 
	public String joinPost(MemberVO member, RedirectAttributes rttr) {
		service.signUp(member);
		return "redirect:/kabart/home";
	}
}
