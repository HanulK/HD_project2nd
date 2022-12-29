package org.kabart.controller;

import java.util.List;

import org.kabart.domain.SearchOrderVO;
import org.kabart.domain.SearchVO;
import org.kabart.service.SearchOrederService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/mypage")
@Log4j
public class MypageController {

	@GetMapping("/cart")
	public void carts(){
	}
	@GetMapping("/buying")
	public void buying() {

	}

}
