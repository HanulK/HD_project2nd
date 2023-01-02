package org.kabart.controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("/kabart/mypage")
@Log4j
public class MypageController {

	@GetMapping("/cart")
	public void cartsGet() {
		
	}
	
	@ResponseBody
	@PostMapping("/cart")
	public void carts(){
		
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
