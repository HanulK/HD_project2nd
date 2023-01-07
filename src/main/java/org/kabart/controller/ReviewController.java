package org.kabart.controller;

import java.util.*;

import org.kabart.domain.ReviewVO;
import org.kabart.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/review")
public class ReviewController {

	@Setter(onMethod_ = { @Autowired })
	private ReviewService rService;

	@GetMapping("/get")
	public ResponseEntity<List<ReviewVO>> getReview(@RequestParam("prod_id") String prod_id) {
		return new ResponseEntity<List<ReviewVO>>(rService.get(Integer.parseInt(prod_id)), HttpStatus.OK);
	}

	

	@PostMapping(value="/insert", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Map<String, Object>> insertReview(@RequestBody ReviewVO rVO) {
		log.warn("여기들어온겨??");
		log.warn(rVO);
		Map<String, Object> map = new HashMap<>();
		map.put("result", rService.insert(rVO));
		return new ResponseEntity<Map<String, Object>>(map,HttpStatus.OK);

	}

}
