package org.kabart.service;

import static org.junit.Assert.assertNotNull;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


/*
 * 작성자 : 박정훈
 * 기능 : Service의 Junit Pagingtest 실행.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class prodSearchServiceTests {

	@Setter(onMethod_ = @Autowired)
	private ProdSearchService service;
	
	@Test
	public void test1() {
		
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void prodtest2() {
		
		Criteria cri = new Criteria();
	
		cri.setPageNum(1);
		cri.setAmount(4);
		
		log.info("prod_test=============");
		
		//service.getTotal("캄포",cri);
	}
	
}
