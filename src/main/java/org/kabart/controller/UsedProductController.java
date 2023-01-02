package org.kabart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/usedProduct/")
@Log4j
public class UsedProductController {
	
	@GetMapping("/used_prod_detail")
	public void used_prod_detail() {
		log.info("used item detail controller....");
		
	}
}
