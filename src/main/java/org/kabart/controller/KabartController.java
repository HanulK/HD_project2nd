package org.kabart.controller;

import java.util.*;

import javax.servlet.http.HttpServletResponse;

import org.kabart.domain.*;
import org.kabart.service.*;
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
	
	@Setter (onMethod_ = {@Autowired})
	private MemberService service;
	
	@Setter (onMethod_ = {@Autowired})
	private BestProductService bestproductservice;
	
	@GetMapping("/home")
	public void home(Model model) {
		List<BestProductVO> best = bestproductservice.bestprod();
		
		log.info(best);
		
		model.addAttribute("best", best);
	}

	/* writer : hanul 
	 * 로그인 페이지로 이동하기 위한 controller */ 
	@GetMapping("/login")
	public void login(String error, String logout, Model model) {
		log.warn("###### Error : " + error);
		log.warn("###### Logout : " + logout);
		
		// handling account error
		if(error != null) {
			model.addAttribute("error", "비밀번호를 정확히 입력해주세요.");
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
	
	/* writer : hanul 
	 * 로그아웃 페이지로 이동하기 위한 controller 
	 * 원칙적으로 post 방식으로 요청해야 로그아웃이 됨*/ 
	@GetMapping("/logout")
	public void logoutGet() {
		log.warn("###### Logout");
	}
	
	/* writer : hanul 
	 * 회원가입 페이지로 이동하기 위한 controller */ 
	@GetMapping("/join")
	public void joinGet() { }
	
	/* writer : hanul 
	 * 실제 회원 가입이 이루어지는 action */ 
	@ResponseBody
	@PostMapping(value="/join",consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = MediaType.APPLICATION_JSON_VALUE) 
	public ResponseEntity<Map<String,Object>> joinPost(@RequestBody MemberVO member, RedirectAttributes rttr) {
		int result = service.signUp(member);
		Map<String, Object> map =  new HashMap<String, Object>();
		String ans= result == 0 ? "fail" : "success";
		map.put("result", ans);
		return new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
	}
	
	/* writer : hanul 
	 * 아이디 중복 체크 기능 */ 
	@ResponseBody
	@RequestMapping("/idCheck.do")
	public int idCheck(String new_id) {
		return service.checkId(new_id);
	}
	
	/* writer : hanul 
	 * 아이디 찾기 페이지로 이동하기 위한 controller */ 
	@GetMapping("/findId")
	public void findId() {}
	
	/* writer : hanul 
	 * 회원 아이디 찾는 action */ 
	@ResponseBody
	@RequestMapping("/findId.do")
	public String findId(String phone) {
		return service.findId(phone);
	}
	
	/* writer : hanul 
	 * 회원 정보를 찾는 action */ 
	@ResponseBody
	@PostMapping(value="/getInfoById", consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<MemberVO> getInfo(@RequestBody Map<String,Object> body){
		log.info(body.get("mem_id"));
		MemberVO mVO = service.getInfoById((String)body.get("mem_id"));
		return new ResponseEntity<>(mVO,HttpStatus.OK);
	}
	
	/* writer : hanul 
	 * 비밀번호 찾기 페이지로 이동하기 위한 controller */ 
	@GetMapping(value = "/findPW")
	public void findPW() throws Exception {}

	/* writer : hanul 
	 * 비밀번호 찾기 action 
	 * member service의 결과에 따른 메시지를 사용자에게 전달 */ 
	@ResponseBody
	@RequestMapping(value = "/findPW", consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<Map<String,Object>> findPW(@RequestBody Map<String, Object> body, HttpServletResponse response) throws Exception{
		log.warn("POST findPW");
		String mem_id = (String) body.get("id");
		String email = (String) body.get("email");
		int result =  service.findPW(response, mem_id, email);
		
		Map<String, Object> map =  new HashMap<String, Object>();
		if (result == 1) {
			map.put("msg", "이메일로 임시 비밀번호를 발송하였습니다.");
		} else if (result == 0) {
			map.put("msg", "일치하는 사용자 정보를 찾을 수 없습니다.");
		} else {
			map.put("msg", "메일 전송에 문제가 발생하였습니다.");
		}
		map.put("result", result);
		return new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
	}
}
