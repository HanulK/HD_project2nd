package org.kabart.controller;

import java.util.*;

import org.apache.ibatis.javassist.expr.NewArray;
import org.kabart.domain.MemberVO;
import org.kabart.mapper.MemberMapper;
import org.kabart.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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
	
	
	@ResponseBody
	@PostMapping(value="/join",consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = MediaType.APPLICATION_JSON_VALUE) 
	public ResponseEntity<Map<String,Object>> joinPost(@RequestBody MemberVO member, RedirectAttributes rttr) {
		int result = service.signUp(member);
		Map<String, Object> map =  new HashMap<String, Object>();
		String ans= result == 0 ? "fail" : "success";
		map.put("result", ans);
		return new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
	}
	
	@ResponseBody
	@RequestMapping("/idCheck.do")
	public int idCheck(String new_id) {
		return service.idCheck(new_id);
	}
	
	@GetMapping("/find_id")
	public void findId() {}
	
	@ResponseBody
	@RequestMapping("/findId.do")
	public String findId(String phone) {
		return service.findId(phone);
	}
}
