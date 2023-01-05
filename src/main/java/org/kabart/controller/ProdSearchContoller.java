package org.kabart.controller;

import java.util.List;

import org.kabart.domain.*;
import org.kabart.service.ProdSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/kabart/product")
public class ProdSearchContoller {
	///kabart/product/search_list
	//정훈
	@Setter(onMethod_= {@Autowired} )
	private ProdSearchService prodSearchService;
	
	@GetMapping("/search_complete_list")
	public void getSearchList(Criteria cri, Model model) {
		
		
		log.info(cri);
		List<ProductListVO> list = prodSearchService.searchProd(cri);
		model.addAttribute("products",list);
		//model.addAttribute("pageMaker", pageDTO);
		
		//model.addAttribute("productList", list);
		int totalCount = prodSearchService.getTotalCount(cri);
		//PageDTO pageDTO = new PageDTO(cri, totalCount);
		
		
		
		model.addAttribute("pageMaker", new PageDTO(cri, totalCount));
		
		

	}
	
	@GetMapping("/search_list")
	public void getSearch() {
		
	}
	
	
	@GetMapping("/search_page")
	public void getSearchpage() {
		
	}
	
	
}
