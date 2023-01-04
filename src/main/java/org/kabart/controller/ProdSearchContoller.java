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
	
	//정훈
	@Setter(onMethod_= {@Autowired} )
	private ProdSearchService prodSearchService;
	
	@PostMapping("/search_list")
	public String getSearchList(Criteria cri, Model model) {
//		List<String> products = new ArrayList<String>();
//		for(String p : products) {
//			
//		}
		log.info(cri);
		List<ProductListVO> list = prodSearchService.searchProd(cri);
		
		// totalCount = prodSearchService.getTotalCount(cri);
		
		//PageDTO pageDTO = new PageDTO(cri, totalCount);
		
		model.addAttribute("products",list);
		//model.addAttribute("pageMaker", pageDTO);
		return "";
		
	}
	@GetMapping("/search_list")
	public void getSearchProd() {
	
		
	}
	 
}
