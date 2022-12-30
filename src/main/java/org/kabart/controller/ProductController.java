package org.kabart.controller;

import java.util.List;

import org.kabart.domain.ImgVO;
import org.kabart.domain.ProductDetailVO;
import org.kabart.domain.ProductListVO;
import org.kabart.domain.SearchOrderVO;
import org.kabart.domain.SearchVO;
import org.kabart.domain.ShopVO;
import org.kabart.service.ProductDetailService;
import org.kabart.service.ProductListService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/kabart/product/")
@Log4j
@AllArgsConstructor
public class ProductController {
	
	private ProductListService productListService;
	private ProductDetailService productDetailService;
	
	@GetMapping("/prod_list")
	public void productGetList(Model model) {
		log.info("productGetList in Controller");
		model.addAttribute("productList", productListService.getProductList());

	}
	
	@GetMapping(value="/prod_list/{prod_category}")
	@ResponseBody
	public ResponseEntity<List<ProductListVO>> getProductCategory(@PathVariable("prod_category") String prod_category, Model model	) {
		
		log.info("getProductCategory in Controller");
		log.info("prod_category : " + prod_category);
		
		model.addAttribute("productList", productListService.getProductList(prod_category));
		return new ResponseEntity<List<ProductListVO>>(productListService.getProductList(prod_category),HttpStatus.OK);
	}
	
	@GetMapping( "/prod_detail")
	public void prod_detail(@RequestParam("prod_id") int prod_id, Model model) {

		log.info("prod_detail Controller");
		log.info("prod_id : " + prod_id);
		
		List<ImgVO> imgs =  productDetailService.getImgs(prod_id);
		ProductDetailVO detail =  productDetailService.getProdDetail(prod_id);
		List<ShopVO> shops =  productDetailService.getShop(prod_id);
		
		detail.setImgs(imgs);
		detail.setShops(shops);
		
		log.info(detail);
		
		model.addAttribute("detail", productDetailService.getProdDetail(prod_id));
	}
	
}
