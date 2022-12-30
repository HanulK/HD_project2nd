package org.kabart.controller;

import org.kabart.domain.CategoryDTO;
import org.kabart.domain.Criteria;
import org.kabart.domain.PageDTO;
import org.kabart.service.ProductDetailService;
import org.kabart.service.ProductListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/product/")
@Log4j
public class ProductController {
	
	@Setter (onMethod_ = {@Autowired})
	private ProductListService productListService;
	
	@Setter (onMethod_ = {@Autowired})
	private ProductDetailService productDetailService;
	
	@GetMapping("/prod_list")
	public void productGetList(Criteria cri,Model model) {
		
		int total = productListService.getTotal(cri);
		
		log.info("total : " + total);
		log.info("productGetList in Controller" + cri);
		
		model.addAttribute("productList", productListService.getProductList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}
	
	@GetMapping(value="/prod_list/{prod_category}/{page}", produces = {MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public ResponseEntity<CategoryDTO> getProductCategory(@PathVariable("prod_category") String prod_category, @PathVariable("page") int page) {
		
		Criteria cri = new Criteria(page, 8);
		
		log.info("getProductCategory in Controller");
		log.info("prod_category : " + prod_category);
		
		return new ResponseEntity<>(productListService.getListPage(cri, prod_category), HttpStatus.OK);
	}
	
	@GetMapping( "/prod_detail")
	public void prod_detail(@RequestParam("prod_id") int prod_id, Model model) {

		log.info("prod_detail Controller");
		log.info("prod_id : " + prod_id);
		
		model.addAttribute("detail", productDetailService.getProdDetail(prod_id));
		
		/* List<ImgVO> imgs = productDetailService.getImgs(prod_id); */
		/* ProductDetailVO detail = productDetailService.getProdDetail(prod_id); */
		
		/*
		 * detail.setImg_detail(imgs);
		 * 
		 * log.info(detail);
		 */
		
	}
	
}
