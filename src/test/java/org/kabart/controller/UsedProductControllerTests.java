package org.kabart.controller;

/*
 * *Author : 이세아, 차민수
 * *기능 : 중고제품 상세정보 Controller Test, 중고제품 CRUD Controller Test
 * 
 * */

import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
/**
*
* @author 차민수, 이세아
* @Date 2023. 1. 11.
* @기능  중고 상품 Controller 테스트
* 
*/
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration // Test for Controller
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class UsedProductControllerTests {

	@Setter(onMethod_ = @Autowired)
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setUp() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	/**
	*
	* @author 차민수
	* @Date 2023. 1. 11.
	* @기능  중고 상품 조회 메서드 테스트 (GET 방식으로 처리)
	* 
	*/
	
	@Test
	public void testUsedSellSelect() throws Exception {
		
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/kabart/usedProduct/used_prod_sell").param("prod_id", "171130")).andReturn().getModelAndView().getModelMap());
	}
	
	/**
	*
	* @author 차민수
	* @Date 2023. 1. 11.
	* @기능  중고 상품 등록 메서드 테스트 (POST 방식으로 처리)
	* 
	*/
	@Test
	public void testUsedSellInsert() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/kabart/usedProduct/used_prod_sell").param("prod_id", "146812").param("mem_id", "doongdoong").param("grade", "ROYAL").param("up_comment", "컨트롤러단에서 테스트"))
							.andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}
	
	@Test
	public void testRead() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/kabart/usedProduct/detail").param("up_id", "24"))
				.andReturn().getModelAndView().getModelMap());
	}
	
	
	/**
	*
	* @author 차민수
	* @Date 2023. 1. 11.
	* @기능  중고 상품 수정 메서드 테스트 (POST 방식으로 처리)
	* 
	*/
	@Test
	public void testUsedSellModify() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/kabart/usedProduct/used_prod_detail/modify").param("up_id", "71").param("up_comment", "url 두번째 컨트롤러 테스트"))
							.andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}

	/**
	*
	* @author 차민수
	* @Date 2023. 1. 11.
	* @기능  중고 상품 삭제 메서드 테스트 (POST 방식으로 처리)
	* 
	*/
	@Test
	public void testUsedSellRemove() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/kabart/usedProduct/used_prod_detail/remove").param("up_id", "73"))

							.andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}
}
