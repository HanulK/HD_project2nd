package org.kabart.controller;

import java.util.List;

import org.kabart.domain.Criteria;
import org.kabart.domain.PageDTO;
import org.kabart.domain.ProductListVO;
import org.kabart.service.ProductDetailService;
import org.kabart.service.ProductListService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/product/")
@Log4j
@AllArgsConstructor

public class ProductController {
	
	private ProductListService productListService;
	private ProductDetailService productDetailService;
	
	@GetMapping("/prod_list")
	public void productGetList(Criteria cri,Model model) {
		log.info("productGetList in Controller" + cri);
		model.addAttribute("productList", productListService.getProductList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, 123));

	}
	
	
	@GetMapping(value="/prod_list/{prod_category}")
	@ResponseBody
	public ResponseEntity<List<ProductListVO>> getProductCategory(@PathVariable("prod_category") String prod_category, Model model	) {
		
		log.info("getProductCategory in Controller");
		log.info("prod_category : " + prod_category);
		
		model.addAttribute("productList", productListService.getProductList(prod_category));
		return new ResponseEntity<List<ProductListVO>>(productListService.getProductList(prod_category),HttpStatus.OK);
	}
	
	
}
