package org.kabart.controller;

import org.springframework.web.bind.annotation.*;

import java.util.List;

import org.kabart.domain.MemberVO;
import org.kabart.domain.SearchOrderUsedVO;
import org.kabart.mapper.MemberMapper;
import org.kabart.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/kabart")
public class KabartController {

	@GetMapping("/home")
	public void home() { }
	
	@Setter (onMethod_ = {@Autowired})
	private MemberMapper mapper;
	
	@Setter (onMethod_ = {@Autowired})
	private MemberService service;

	
	@GetMapping("/login")
	public void login(String error, String logout, Model model) {
		log.warn("###### Error : " + error);
		log.warn("###### Logout : " + logout);
		
		// handling account error
		if(error != null) {
			model.addAttribute("error", "비밀번호를 정확히 입력해주세요.");
			System.out.println("비밀번호 틀림");
		}
		
		// handing logout
		if(logout != null) {
			model.addAttribute("logout", "LOGOUT!!!");
		}
	}
	
	@PostMapping("/login")
	public void loginGet(@RequestParam("error") String error) {
		log.warn("###### login with error : "+error);
	}
	
	@GetMapping("/logout")
	public void logoutGet() {
		log.warn("###### Logout");
	}
	
	@GetMapping("/join")
	public void joinGet() { }
	
	
	@PostMapping(value="/join", produces = MediaType.APPLICATION_JSON_VALUE) 
	public String joinPost(MemberVO member, RedirectAttributes rttr) {
		service.signUp(member);
		return "redirect:/kabart/home";
	}
	
	@ResponseBody
	@RequestMapping("/idCheck.do")
	public int idCheck(String new_id) {
		int result = mapper.idCheck(new_id);
		return result;
	}
	
	@GetMapping("/find_id")
	public void findId() {}
	
	@GetMapping("/find_pw")
	public void findPw() {}
	
	@ResponseBody
	@RequestMapping("/findId.do")
	public String findID(String phone) {
		return mapper.findId(phone);
	}
}
