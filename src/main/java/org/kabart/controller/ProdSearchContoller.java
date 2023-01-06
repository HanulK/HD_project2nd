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
	private ProdSearchService Service;
	
	@GetMapping("/search_complete_list")
	public void getSearchList(Criteria cri, Model model) {
		
		log.info(cri);
		List<ProductListVO> list = Service.searchProd(cri);
		model.addAttribute("products",list);
		
		
		int total = Service.getTotal(cri);
		model.addAttribute("total", total);
		
//		int pageMaker = Service.getTotal(cri);
//		model.addAttribute("pageMaker", new PageDTO(cri, totalcount));
	}
	
	@GetMapping("/search_list")
	public void getSearch() {
		
	}
	
	@GetMapping("/search_page")
	public void getSearchpage() {
		
	}
//	@GetMapping("/search_complete_list")
//	public void list(Model model) {
//	log.info("list:" +cri);
//	model.addAttribute("list",Service.getList(cri));
//	}
//	@GetMapping(""/search_complete_list")
//	public void list(Criteria criteria ,Model model) {
//		model.addAttribute("list", new service.getList(cri, total));
//		model.addAttribute("pageMaker", new PageDTO(cri, total));
//	}
	//model.addAttribute("pageMaker", pageDTO);
	
			//model.addAttribute("productList", list);
			
			//int totalCount = prodSearchService.getTotalCount(cri);
			//PageDTO pageDTO = new PageDTO(cri, totalCount);
			//model.addAttribute("pageMaker", new PageDTO(cri, totalCount));
			//log.info("total: " + total);
			//model.addAttribute("list", service.getList(cri));
}

