package org.kabart.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.SearchVO;
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

/* *Author : 남승현
 * 기능 : 주문내역 조회 시 활용되는 Controller Test
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class SearchOrderControllerTests {
	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	/* *Author : 남승현
	 * 기능 : 신상품 구매내역 조회
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 * 기타 : POST method 활용
	 */
	@Test
	public void testNew() throws Exception {
		SearchVO vo = new SearchVO("test","22/12/01","23/01/30");
		String jsonStr = new Gson().toJson(vo);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.post("/search/newbuying")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
				.andExpect(status().is(200));
		
	}
	
	/* *Author : 남승현
	 * 기능 : 중고상품 구매내역 조회
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 * 기타 : POST method 활용
	 */
	@Test
	public void testUsed() throws Exception {
		SearchVO vo = new SearchVO("test","22/12/01","23/01/30");
		String jsonStr = new Gson().toJson(vo);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.post("/search/usedbuying")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
				.andExpect(status().is(200));
		
	}
	
	/* *Author : 남승현
	 * 기능 : 판매 중인 중고상품 내역 조회
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 * 기타 : POST method 활용
	 */
	@Test
	public void testSelling() throws Exception{
		SearchVO vo = new SearchVO("anna","22/12/01","23/01/30");
		String jsonStr = new Gson().toJson(vo);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.post("/search/selling")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
				.andExpect(status().is(200));
	}
	
	/* *Author : 남승현
	 * 기능 : 판매완료 된 중고상품 내역 조회
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 * 기타 : POST method 활용
	 */
	@Test
	public void testSelled() throws Exception{
		SearchVO vo = new SearchVO("test","22/12/01","23/01/30");
		String jsonStr = new Gson().toJson(vo);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.post("/search/selled")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
		.andExpect(status().is(200));
	}
}