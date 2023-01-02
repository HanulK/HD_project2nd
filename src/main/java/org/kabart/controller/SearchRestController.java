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
	@Setter(onMethod_=@Autowired)
	private SearchOrederService service;
	
	@GetMapping(value="/newbuying",consumes = MediaType.APPLICATION_JSON_VALUE, produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<List<SearchOrderVO>> getBuyList(
			@RequestParam("mem_id") String mem_id,
			@RequestParam("start_date") String start_date,
			@RequestParam("end_date") String end_date){
		SearchVO sVO = new SearchVO(mem_id,start_date,end_date);
		System.out.println(sVO);
		List<SearchOrderVO> result = service.getSearchNewList(mem_id,start_date,end_date);
		System.out.println("/search/buying");
		result.forEach(od -> System.out.println(od));
		System.out.println(result);
		return new ResponseEntity<List<SearchOrderVO>>(result,HttpStatus.OK);
	}
	
	@GetMapping(value="/usedbuying",consumes = MediaType.APPLICATION_JSON_VALUE, produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<List<SearchOrderUsedVO>> getUsedList(
			@RequestParam("mem_id") String mem_id,
			@RequestParam("start_date") String start_date,
			@RequestParam("end_date") String end_date){
		SearchVO sVO = new SearchVO(mem_id,start_date,end_date);
		System.out.println(sVO);
		List<SearchOrderUsedVO> result = service.getSearchUsedList(mem_id,start_date,end_date);
		System.out.println("/search/buying");
		result.forEach(od -> System.out.println(od));
		System.out.println(result);
		return new ResponseEntity<List<SearchOrderUsedVO>>(result,HttpStatus.OK);
	}
	
}
