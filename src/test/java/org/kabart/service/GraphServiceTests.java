package org.kabart.service;

/*
 * *Author : 이세아
 * *기능 : 독창성 기능 중 고객 분석 그래프 Service Test
 * 
 * */

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class GraphServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private GraphService service;
	
	@Test
	public void family() {
		log.info("family Graph Test.....");
		int prod_id = 45189;
		service.family(prod_id);
	}
	
	@Test
	public void age() {
		log.info("age Graph Test.....");
		int prod_id = 45189;
		service.age(prod_id);
	}

}
