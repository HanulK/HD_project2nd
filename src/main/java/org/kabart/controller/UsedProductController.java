package org.kabart.controller;

import java.util.List;

import org.kabart.domain.Criteria;
import org.kabart.domain.PageDTO;
import org.kabart.domain.UsedProductListVO;
import org.kabart.service.UsedProductListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/usedProduct/")
@Log4j
public class UsedProductController {
	
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

	@GetMapping("/used_prod_detail")
	public void used_prod_detail() {
		log.info("used item detail controller....");

	}

	@GetMapping("/used_prod_sell")
	public void used_prod_sell() {
		log.info("used prod sell....");
	}
}
