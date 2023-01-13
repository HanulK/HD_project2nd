package org.kabart.controller;

import org.kabart.domain.*;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import org.kabart.service.SearchOrederService;
import org.springframework.beans.factory.annotation.Autowired;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


/* *Author : 남승현
 * 기능 : 주문내역 조회에 활용될 RestController    
 * 기타 : 조회의 경우, Ajax를 통해 처리하도록 설계하여 RestController로 선언 
 */
@RestController
@RequestMapping("/search")
@Log4j
public class SearchRestController {
	// 주문내역 서비스 의존성 주입 
	@Setter(onMethod_ = @Autowired)
	private SearchOrederService service;

	/* *Author : 남승현
	 * 기능 : 신상품 구매내역 조회  
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	@PostMapping(value = "/newbuying", consumes = MediaType.APPLICATION_JSON_VALUE, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<SearchOrderVO>> getBuyList(@RequestBody SearchVO sVO) {
		List<SearchOrderVO> result = service.getSearchNewList(sVO.getMem_id(), sVO.getStart_date(), sVO.getEnd_date());
		return new ResponseEntity<List<SearchOrderVO>>(result, HttpStatus.OK);
	}
	
	/* *Author : 남승현
	 * 기능 : 중고상품 구매내역 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	@PostMapping(value = "/usedbuying", consumes = MediaType.APPLICATION_JSON_VALUE, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<SearchOrderUsedVO>> getUsedList(@RequestBody SearchVO sVO) {
		List<SearchOrderUsedVO> result = service.getSearchUsedList(sVO.getMem_id(), sVO.getStart_date(), sVO.getEnd_date());
		return new ResponseEntity<List<SearchOrderUsedVO>>(result, HttpStatus.OK);
	}
	
	/* *Author : 남승현
	 * 기능 : 판매 중인 중고상품 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	@PostMapping(value = "/selling", consumes = { MediaType.APPLICATION_JSON_VALUE }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<SearchOrderUsedVO>> getSellingList(@RequestBody SearchVO sVO) {
		log.info("/selling" + sVO);
		return new ResponseEntity<List<SearchOrderUsedVO>>(
				service.getSellingList(sVO.getMem_id(), sVO.getStart_date(), sVO.getEnd_date()), HttpStatus.OK);
	}
	
	/* *Author : 남승현
	 * 기능 : 판매완료 된 중고상품 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	@PostMapping(value = "/selled", consumes = { MediaType.APPLICATION_JSON_VALUE }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<SearchOrderUsedVO>> getSelledList(@RequestBody SearchVO sVO) {
		log.info("/selled" + sVO);
		return new ResponseEntity<List<SearchOrderUsedVO>>(
				service.getSelledList(sVO.getMem_id(), sVO.getStart_date(), sVO.getEnd_date()), HttpStatus.OK);
	}

}
