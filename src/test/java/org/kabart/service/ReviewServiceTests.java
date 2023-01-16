package org.kabart.service;

/*
 * *Author : 이세아, 남승현
 * *기능 : 리뷰 Service Test
 * 
 * */


import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ReviewServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private ReviewService service;
	
	
	/* *Author : 남승현
	 * 기능 : 구매한 상품에 대한 리뷰작성 기능 테스트
	 * 매개변수 : 주문 번호, 사용자 아이디, 리뷰 내용, 작성일 ,상품 아이디
	 */
	@Test
	public void insertReivew() {
		log.info("insert Reivews");
		int order_id = 54;
		String mem_id = "dodo";
		String rv_text = "hihi";
		String rv_date = "";
		int prod_id = 42431;

		ReviewVO rVO = new ReviewVO(order_id,mem_id,rv_text,null,prod_id);
		service.insert(rVO);
		
	}
	
	/* 이세아 - 제품 id에 따라 리뷰 조회 */
	@Test
	public void getreviews() {
		log.info("product reviews");
		int prod_id = 146812;
		service.get(prod_id).forEach(rv -> log.info(rv));
		
	}

}
