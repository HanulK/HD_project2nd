	package org.kabart.controller;


import java.util.List;

import org.kabart.domain.*;
import org.kabart.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/usedProduct/")
@Log4j
public class UsedProductController {
	
	@Setter(onMethod_ = { @Autowired })
	private UsedProductDetailService service;

	@GetMapping("/used_prod_detail")
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
	
	@Setter(onMethod_ = { @Autowired })
	private ProductDetailService productDetailService;
	
	
	@GetMapping("/used_prod_sell")
	public void used_prod_sell(@RequestParam("prod_id") int prod_id, Model model) {
		
		log.info("prod_detail Controller");
		log.info("prod_id : " + prod_id);

		List<ImgVO> imgs = productDetailService.getdetailImgs(prod_id);
		List<UsedProductVO> useds = productDetailService.getused(prod_id);
		

		ProductDetailVO detail = productDetailService.getProdDetail(prod_id);

		detail.setImgs(imgs);
		detail.setUseds(useds);

		log.info(detail);
		

		model.addAttribute("detail", detail);
	}
	
	@Setter(onMethod_ = {@Autowired})
	private UsedSellService usedSellService;
	
	@PostMapping("/used_prod_sell")
	public String used_prod_sell_insert(UsedSellVO usedSellVO, RedirectAttributes rttr) {
		
		usedSellService.registerUsedProduct(usedSellVO);
		rttr.addFlashAttribute("result", usedSellVO.getUp_id());
		
		return "redirect:/kabart/mypage/selling";
	}
}
