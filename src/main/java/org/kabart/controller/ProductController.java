package org.kabart.controller;

import java.util.List;

import org.kabart.domain.CategoryDTO;
import org.kabart.domain.Criteria;
import org.kabart.domain.ImgVO;
import org.kabart.domain.PageDTO;
import org.kabart.domain.ProductDetailVO;
import org.kabart.domain.ProductListVO;
import org.kabart.domain.ReviewVO;
import org.kabart.domain.UsedProductVO;
import org.kabart.service.ProductDetailService;
import org.kabart.service.ProductListService;
import org.kabart.service.ReviewService;
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

	@Setter(onMethod_ = { @Autowired })
	private ProductListService productListService;

	@Setter(onMethod_ = { @Autowired })
	private ProductDetailService productDetailService;
	
	@Setter(onMethod_ = { @Autowired })
	private ReviewService reviewservice;

	@GetMapping("/prod_list")
	public void productGetList(Criteria cri, Model model) {

		int total = productListService.getTotal(cri);

		log.info("total : " + total);
		log.info("productGetList in Controller" + cri);

		model.addAttribute("productList", productListService.getProductList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}
	
	@GetMapping(value="/prod_list/{prod_category}/{page}", produces = {MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public ResponseEntity<CategoryDTO> getProductCategory(@PathVariable("page") int page, @PathVariable("prod_category") String prod_category) {
		
		Criteria cri = new Criteria(page, 8);
		
		log.info("getProductCategory in Controller");
		log.info("prod_category : " + prod_category);
		
		return new ResponseEntity<>(productListService.getListPage(cri, prod_category), HttpStatus.OK);
	}

	@GetMapping("/prod_detail")
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
	
	/* 댓글 조회 작업 테스트
	 * @GetMapping(value = "/prod_detail", produces = {
	 * MediaType.APPLICATION_JSON_VALUE }) public ResponseEntity<List<ReviewVO>>
	 * getList(@RequestParam("prod_id") int prod_id) {
	 * 
	 * log.info("getList........."); return new
	 * ResponseEntity<>(reviewservice.get(prod_id), HttpStatus.OK); }
	 */

}
