package org.kabart.controller;

import org.kabart.domain.*;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import org.kabart.service.SearchOrederService;
import org.springframework.beans.factory.annotation.Autowired;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/search")
@Log4j
public class SearchRestController {
	@Setter(onMethod_ = @Autowired)
	private SearchOrederService service;

	@PostMapping(value = "/newbuying", consumes = MediaType.APPLICATION_JSON_VALUE, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<SearchOrderVO>> getBuyList(@RequestBody SearchVO sVO) {
		System.out.println(sVO);
		List<SearchOrderVO> result = service.getSearchNewList(sVO.getMem_id(), sVO.getStart_date(), sVO.getEnd_date());
		System.out.println("/search/buying");
		result.forEach(od -> System.out.println(od));
		System.out.println(result);
		return new ResponseEntity<List<SearchOrderVO>>(result, HttpStatus.OK);
	}

	@PostMapping(value = "/usedbuying", consumes = MediaType.APPLICATION_JSON_VALUE, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<SearchOrderUsedVO>> getUsedList(@RequestBody SearchVO sVO) {
		System.out.println("/search/usedbuying");
		List<SearchOrderUsedVO> result = service.getSearchUsedList(sVO.getMem_id(), sVO.getStart_date(), sVO.getEnd_date());
		return new ResponseEntity<List<SearchOrderUsedVO>>(result, HttpStatus.OK);
	}

	@PostMapping(value = "/selling", consumes = { MediaType.APPLICATION_JSON_VALUE }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<SearchOrderUsedVO>> getSellingList(@RequestBody SearchVO sVO) {
		log.info("/selling" + sVO);
		System.out.println("selling");
		System.out.println(sVO);
		return new ResponseEntity<List<SearchOrderUsedVO>>(
				service.getSellingList(sVO.getMem_id(), sVO.getStart_date(), sVO.getEnd_date()), HttpStatus.OK);
	}

	@PostMapping(value = "/selled", consumes = { MediaType.APPLICATION_JSON_VALUE }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<SearchOrderUsedVO>> getSelledList(@RequestBody SearchVO sVO) {
		log.info("/selled" + sVO);
		System.out.println("selled");
		System.out.println(sVO);
		return new ResponseEntity<List<SearchOrderUsedVO>>(
				service.getSelledList(sVO.getMem_id(), sVO.getStart_date(), sVO.getEnd_date()), HttpStatus.OK);
	}

}
