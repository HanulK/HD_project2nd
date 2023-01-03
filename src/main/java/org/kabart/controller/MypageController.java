package org.kabart.controller;

import java.util.Map;

import org.kabart.service.CartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("/kabart/mypage")
@Log4j
public class MypageController {
	
	@Setter(onMethod_= {@Autowired})
	CartsService cService;
	
	@GetMapping("/my")
	public void myMain() {
		
	}
	@GetMapping("/cart")
	public void cartsGet() {
		
	}
	
	@PostMapping(value="/cart",consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<String> addCart(@RequestBody Map<String,Object> body){
		String mem_id = (String)body.get("mem_id");
		System.out.println("inser Cart gogo ");
		int prod_id = (int)body.get("prod_id");
		int quantity = (int)body.get("quantity");
		System.out.println(mem_id);
		System.out.println(prod_id);
		System.out.println(quantity);
		return new ResponseEntity<String>(cService.isExist(mem_id, prod_id, quantity),HttpStatus.OK);
	}
	

	
	
	@GetMapping("/profile")
	public void profile() {
		
	}
	
	@GetMapping("/buying")
	public void buying() {

	}
	@GetMapping("/selling")
	public void selling() {
		
	}
}
