package org.kabart.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
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

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration // Test for Controller
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
/*작성자 : 박정훈 
 * 기능 : mock을 사용하여 controller를 JUnit테스트를 하는 기능.
 */
public class ProdSearchControllerTests {

	@Setter(onMethod_ = @Autowired)
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setUp() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}

	@Test
	public void testProductGetList() throws Exception {
		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/kabart/product/search_complete_list")
				.param("pageNum", "1")
				.param("amount", "8")
				.param("prod_category", "all"))
				.andReturn().getModelAndView().getModelMap());
	}

	@Test
	public void testGetList() throws Exception{
		Criteria criteria = new Criteria();
		criteria.setKeyword("침대");
		criteria.setType("T");
		String jsonString = new Gson().toJson(criteria);
		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/kabart/product/search_complete_list")
				.param("pageNum", "1")
				.param("amount", "8")
				.param("prod_category", "all"))
				.andReturn().getModelAndView().getModelMap());
	}
}
