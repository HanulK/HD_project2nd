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
@RequestMapping("/kabart/product/")
@Log4j
public class ProductController {

	@Setter(onMethod_ = { @Autowired })
	private ProductListService productListService;

	@Setter(onMethod_ = { @Autowired })
	private ProductDetailService productDetailService;

	@Setter(onMethod_ = { @Autowired })
	private ReviewService reviewservice;

	@GetMapping("/prod_list")
	public void productGetList(@RequestParam(value = "prod_category") String prod_category,
			@ModelAttribute("cri") Criteria cri, Model model) {
		List<ProductListVO> list = productListService.getListWithPaging(prod_category, cri);
		if (prod_category.equals("all")) {
			list.get(0).setProd_category("all");
		}
		model.addAttribute("productList", list);
		int total = productListService.getTotal(cri);

		log.info("total : " + total);
		log.info("productGetList in Controller" + cri);

		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}

	@GetMapping(value="/prod_detail")
	public void prod_detail(@RequestParam("prod_id") int prod_id, Model model) {

		log.info("prod_detail Controller");
		log.info("prod_id : " + prod_id);

		List<ImgVO> imgs = productDetailService.getdetailImgs(prod_id);
		List<UsedProductVO> useds = productDetailService.getused(prod_id);
		List<ReviewVO> rvs = reviewservice.get(prod_id);

		ProductDetailVO detail = productDetailService.getProdDetail(prod_id);

		detail.setImgs(imgs);
		detail.setUseds(useds);

		log.info(detail);
		log.info(rvs);

		model.addAttribute("detail", detail);
		model.addAttribute("review", rvs);
	}

	/*
	 * 댓글 조회 작업 테스트
	 * 
	 * @GetMapping(value = "/prod_detail", produces = {
	 * MediaType.APPLICATION_JSON_VALUE }) public ResponseEntity<List<ReviewVO>>
	 * getList(@RequestParam("prod_id") int prod_id) {
	 * 
	 * log.info("getList........."); return new
	 * ResponseEntity<>(reviewservice.get(prod_id), HttpStatus.OK); }
	 */

}
