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
	//정훈 http://localhost/kabart/product/prod_search_n
	
	@Setter(onMethod_= {@Autowired})
	private ProdSearchService Service;
	
	@GetMapping("/search_complete_list")
	
	public void getSearchList(Criteria cri, Model model) {
		
		log.info(cri);

		List<ProductListVO> list = Service.searchProd(cri);
		model.addAttribute("products",list);
		int total = Service.getTotal(cri);
		
		log.info("total : " + total);
		model.addAttribute("total", total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		
		
	
	}
}

