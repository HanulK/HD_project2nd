package org.kabart.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/kabart")
public class KabartController {
	
	@GetMapping("/home")
	public void home() {
		
	}
	/*
	 * @GetMapping("/all") public void doAll() {
	 * log.info("do ALL can access everybody!"); }
	 * 
	 * @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_MEMBER')")
	 * 
	 * @GetMapping("/member") public void doMember() { log.info("logined member"); }
	 * 
	 * @Secured({"ROLE_ADMIN"})
	 * 
	 * @GetMapping("/admin") public void doAdmin() { log.info("logined admin"); }
	 * 
	 * @GetMapping("/login") public void login() {}
	 * 
	 * @GetMapping("/logout") public void logout() {}
	 */
}
