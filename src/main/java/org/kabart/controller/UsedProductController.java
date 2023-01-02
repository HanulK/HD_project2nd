package org.kabart.controller;

import org.springframework.web.bind.annotation.*;
import org.kabart.domain.*;
import org.kabart.service.UsedProductDetailService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/usedProduct/")
@Log4j
public class UsedProductController {
	
	private UsedProductDetailService service;

	@GetMapping("/detail")
	public void used_prod_detail(@RequestParam("up_id") int up_id, Model model) {
		log.info("used item detail controller....");
		
		UsedProductDetailVO read = service.read(up_id);
		
		model.addAttribute("read", read);
	}

	@GetMapping("/used_prod_list")
	public void used_prod_list() {
		log.info("used prod list ,,,,");
	}

	@RequestMapping("/used_prod_sell")
	// @PreAuthorize("isAuthenticated()")
	public void used_prod_sell() {
		log.info("used prod sell....");
	}
}
