package org.kabart.controller;


import java.util.List;

import org.kabart.domain.*;
import org.kabart.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/usedProduct/")
@Log4j
public class UsedProductController {
	
	private UsedProductDetailService service;

	@GetMapping("/detail")
	public void used_prod_detail(@RequestParam("up_id") int up_id, Model model) {
		log.info("used item detail controller....");
		
		UsedProductDetailVO read = service.read(up_id);
		
		model.addAttribute("read", read);
	}
	
	@Setter(onMethod_ = { @Autowired })
	private UsedProductListService usedProductListService;
	
	@GetMapping("/used_prod_list")
	public void used_prod_list(@RequestParam(value="prod_category") String prod_category,
			@ModelAttribute("cri") Criteria cri, Model model) {
		List<UsedProductListVO> list = usedProductListService.getUsedProductListWithPaging(prod_category, cri);
		if (prod_category.equals("all")) {
			list.get(0).setProd_category("all");
		}
		model.addAttribute("usedProductList", list);
		
		int total = usedProductListService.getTotalCount(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
	}

	@RequestMapping("/used_prod_sell")
	// @PreAuthorize("isAuthenticated()")
	public void used_prod_sell() {
		log.info("used prod sell....");
	}
}
