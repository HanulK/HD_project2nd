package org.kabart.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.*;

import org.junit.*;
import org.junit.runner.RunWith;
import org.kabart.domain.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.google.gson.Gson;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* *Author : 남승현, 이세아
 * 기능 : 구매상품에 대한 리뷰작성 및 리뷰 불러오기
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ReviewControllerTests {
	
	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	
	/* *Author : 남승현
	 * 기능 : 구매한 상품에 대한 리뷰 작성
	 * 매개변수 : 주문 번호, 상품 아이디, 사용자 아이디, 리뷰 내용
	 * 기타 : POST method 활용
	 */
	@Test
	public void testInsert() throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("order_id", 48);
		map.put("prod_id", 171130);
		map.put("mem_id", "dodo");
		map.put("rv_text", "dodo");

		ReviewVO rVO = new ReviewVO(48,"dodo","hh",null,171130);
		String jsonStr = new Gson().toJson(rVO);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.post("/review/insert")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
				.andExpect(status().is(200));
	}
	
	
	/* *Author : 이세아
	 * 기능 : 상품 상세에서 리뷰 조회시 리뷰를 불러오는 기능
	 * 매개변수 : 주문 번호, 사용자 아이디, 리뷰 내용, 작성일, 상품 아이디
	 * 기타 : POST method 활용
	 */
	@Test
	public void getReview() throws Exception {
		Map<String, Object> map = new HashMap<>();
		int order_id = 48;
		String mem_id = "dodo";
		String rv_text = "테스트";
		String rv_date = "";
		int prod_id = 171130;
		
		ReviewVO rVO = new ReviewVO(order_id,mem_id,rv_text,null,prod_id);
		map.put("rVO", rVO);
		String jsonStr = new Gson().toJson(rVO);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.get("/review/get?prod_id=42431")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
				.andExpect(status().is(200));
	}
	
	
	
}
