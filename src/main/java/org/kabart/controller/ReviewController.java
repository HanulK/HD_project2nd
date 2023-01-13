package org.kabart.controller;

import java.util.*;

import org.kabart.domain.ReviewVO;
import org.kabart.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


/* *Author : 남승현
 * 기능 : 리뷰 기능 관련 RestController
 * 기타 : 리뷰의 경우, 조회나 리뷰작성에 대해 ajax 처리를 함 
 *        ajax에 대해 처리하기위해, RestController로 적용 
 */
@RestController
@Log4j
@RequestMapping("/review")
public class ReviewController {
	// 리뷰 서비스 의존성 주입 
	@Setter(onMethod_ = { @Autowired })
	private ReviewService rService;
	
	/* *Author : 남승현
	 * 기능 : 상품에 대한, 리뷰를 불러옴
	 * 매개변수 : 상품 아이디
	 */
	@GetMapping("/get")
	public ResponseEntity<List<ReviewVO>> getReview(@RequestParam("prod_id") String prod_id) {
		return new ResponseEntity<List<ReviewVO>>(rService.get(Integer.parseInt(prod_id)), HttpStatus.OK);
	}

	/* *Author : 남승현
	 * 기능 : 리뷰 작성 기능 
	 * 매개변수 : 리뷰 인스턴스(주문번호, 사용자 아이디, 리뷰내용, 작성일, 상품 아이디)
	 */
	@PostMapping(value = "/insert", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Map<String, Object>> insertReview(@RequestBody ReviewVO rVO) {
		Map<String, Object> map = new HashMap<>();
		map.put("result", rService.insert(rVO));
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}

}
