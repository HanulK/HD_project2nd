package org.kabart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("*/usedProduct")
public class UsedProductController {
	
	@GetMapping("/*")
	public void test() {
		
	}
}
