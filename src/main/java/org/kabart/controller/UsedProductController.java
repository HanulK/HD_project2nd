package org.kabart.controller;

import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/usedProduct/")
@Log4j
public class UsedProductController {
	
	@GetMapping("/used_prod_detail")
	public void used_prod_detail() {
		log.info("used item detail controller....");
		
	}
	
	@GetMapping("/used_prod_sell")
	public void used_prod_sell() {
		log.info("used prod sell....");
	}
}
