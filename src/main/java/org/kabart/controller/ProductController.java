package org.kabart.controller;

import org.kabart.domain.ProductListVO;
import org.kabart.service.ProductListService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/product/")
@Log4j
@AllArgsConstructor

public class ProductController {
	
	private ProductListService productListService;
	
	@GetMapping("/prod_list")
	public void productGetList(Model model) {
		log.info("productGetList in Controller");
		model.addAttribute("productList", productListService.getProductList());
	}
	
	
	@GetMapping(value="/prod_list/{prod_category}", produces = {MediaType.APPLICATION_JSON_VALUE})
	public void getProductCategory(@PathVariable("prod_category") String prod_category, Model model) {
		log.info("getProductCategory in Controller");
		log.info("prod_category : " + prod_category);
		
		model.addAttribute("productList", productListService.getProductList(prod_category));
	}
	
}
