package org.kabart.service;

/*
 * *Author : 이세아
 * *기능 : 메인에 나오는 베스트 상품 Service Test
 * 
 * */

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class BestProductServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private BestProductService service;
	
	@Test
	public void testbestprod() {
		log.info("testbestprod..........");
		service.bestprod().forEach(a->log.info(a));
	}

}
