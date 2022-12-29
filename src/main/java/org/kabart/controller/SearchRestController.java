package org.kabart.controller;

import java.util.List;

import org.kabart.domain.SearchOrderVO;
import org.kabart.domain.SearchVO;
import org.kabart.service.SearchOrederService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/search")
@Log4j
public class SearchRestController {
	@Setter(onMethod_=@Autowired)
	private SearchOrederService service;
	
	@GetMapping(value="/buying",consumes = MediaType.APPLICATION_JSON_VALUE, produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<List<SearchOrderVO>> getBuyList(
			@RequestParam("mem_id") String mem_id,
			@RequestParam("start_date") String start_date,
			@RequestParam("end_date") String end_date,
			@RequestParam("is_used") Integer is_used){
		SearchVO sVO = new SearchVO(mem_id,start_date,end_date,is_used);
		System.out.println(sVO);
		List<SearchOrderVO> result = service.getSearchList(mem_id,start_date,end_date,is_used);
		System.out.println("/search/buying");
		result.forEach(od -> System.out.println(od));
		System.out.println(result);
		return new ResponseEntity<List<SearchOrderVO>>(result,HttpStatus.OK);
	}
	
}
