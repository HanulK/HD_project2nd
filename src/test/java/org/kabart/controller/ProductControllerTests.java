package org.kabart.controller;

import org.junit.Before;
import org.junit.Test;
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
 * @기능  신상품 Controller 테스트
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration // Test for Controller
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j

public class ProductControllerTests {

	@Setter(onMethod_ = @Autowired)
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setUp() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	/**
	 *
	 * @author @차민수
	 * @Date 2023. 1. 11.
	 * @기능  신상품 리스트를 보여주는 메서드 테스트
	 * 
	 */
	@Test
	public void testProductGetList() throws Exception {
		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/kabart/product/prod_list").param("pageNum", "1").param("amount", "8").param("prod_category", "all"))
				.andReturn().getModelAndView().getModelMap());
	}
	@Test
	public void testProductDetail() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/kabart/product/prod_detail").param("prod_id", "146812"))
				.andReturn().getModelAndView().getModelMap());
	}

}
