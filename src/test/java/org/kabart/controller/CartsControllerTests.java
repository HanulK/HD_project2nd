package org.kabart.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.*;

import org.junit.*;
import org.junit.runner.RunWith;
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

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class CartsControllerTests {
	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	@Test
	public void testInsertorUpdate() throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("mem_id", "tori");
		map.put("prod_id", 181266);
		map.put("quantity", 1);
		String jsonStr = new Gson().toJson(map);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.post("/kabart/mypage/cart")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
				.andExpect(status().is(200));
	}
	
	@Test
	public void testGetCarts() throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("mem_id", "tori");
		String jsonStr = new Gson().toJson(map);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.post("/kabart/mypage/cartlist")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
				.andExpect(status().is(200));
	}
	
	@Test
	public void testRemove() throws Exception {
		Map<String,Object> map = new HashMap<>();
		List<Integer> id  = new ArrayList<>();
		id.add(79909);
		id.add(77747);
		id.add(181266);
		map.put("mem_id", "tori");
		map.put("prod_id", id);
		String jsonStr = new Gson().toJson(map);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.get("/kabart/mypage/removeCarts?mem_id=tori")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
				.andExpect(status().is(200));
	}
	
	@Test
	public void testUpdate() throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("mem_id", "dodo");
		map.put("prod_id", 60088);
		map.put("quantity", 1);
		String jsonStr = new Gson().toJson(map);
		log.info(jsonStr);
		mockMvc.perform(MockMvcRequestBuilders.post("/kabart/mypage/update")
				.contentType(MediaType.APPLICATION_JSON_VALUE)
				.content(jsonStr))
				.andExpect(status().is(200));
	}
	
}
