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

/* 작성자 : 박정훈
 * 기능 :  service에서 controller로 메소르를이용하여 jsp로 뿌려주는 기능.
*/

@Log4j
@Controller
@RequestMapping("/kabart/product")
public class ProdSearchContoller {
	//setter 메소드를 만들어 autowired를 붙여줌
	@Setter(onMethod_ = { @Autowired })
	private ProdSearchService Service;
	
	///search_complete_list로 Mapping
	@GetMapping("/search_complete_list") 

	public void getSearchList(Criteria cri, Model model) {
		
		log.info(cri);
		//interface의 searchProd를 List형식으로 받고 addAttribute속성을 이용해 model에 담아 페이지에 뿌려주어 적용.
		List<ProductListVO> list = Service.searchProd(cri); 
		model.addAttribute("products", list);
		
		//ProdSearchService의 getTotal를 total개수와 PageDTO에서 계산된 값을 model에 담아 jsp에 적용.
		int total = Service.getTotal(cri); 
		log.info("total : " + total);
		model.addAttribute("total", total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}
}
