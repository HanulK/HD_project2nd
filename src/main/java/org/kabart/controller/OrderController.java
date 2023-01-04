package org.kabart.controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;

@Controller
@RequestMapping("/kabart/order")
public class OrderController {
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/order")
	public void test() {
		
	}
	
}
