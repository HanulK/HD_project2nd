package org.kabart.controller;

import java.security.Principal;
import java.util.*;

import org.kabart.domain.*;
import org.kabart.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("/kabart/mypage")
@Log4j
public class MypageController {
	
	@Setter(onMethod_= {@Autowired})
	private CartsService cService;
	
	@Setter(onMethod_= {@Autowired})
	private MemberService mService;

	@GetMapping("/my")
	public void myMain() {
		
	}
	@GetMapping("/cart")
	public void cartsGet() {
		 	
	}
	
	@PostMapping(value = "/cartlist", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<CartsVO>> getCartList(@RequestBody Map<String,Object> body){
		log.info(body.get("mem_id"));
		return new ResponseEntity<>(cService.getList((String)body.get("mem_id")),HttpStatus.OK);
	
	}
	@PostMapping(value="/cart",consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> addCart(@RequestBody Map<String,Object> body){
		String mem_id = (String)body.get("mem_id");
		System.out.println("inser Cart gogo ");
		int prod_id = (int)body.get("prod_id");
		int quantity = (int)body.get("quantity");
		System.out.println(mem_id);
		System.out.println(prod_id);
		System.out.println(quantity);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", cService.isExist(mem_id, prod_id, quantity));
		return new ResponseEntity<>(map,HttpStatus.OK);
	}
	

	@GetMapping("/profile")
	public void profile(Principal principal, Model model) {
		log.warn(principal.getName());
		MemberVO mem = mService.getInfoById(principal.getName());
		model.addAttribute("member", mem);
		log.warn("========================== member : "+mem);
	}

	@GetMapping("/buying")
	public void buying() {

	}
	@GetMapping("/selling")
	public void selling() {
		
	}
}
