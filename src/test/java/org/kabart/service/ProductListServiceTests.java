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

/**
 *
 * @author @차민수
 * @Date 2023. 1. 11.
 * @기능 신상품 리스트를 보여주는 Service 테스트 
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class ProductListServiceTests {

	@Setter(onMethod_ = @Autowired)
	private ProductListService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void categoryProductList() {
		Criteria cri = new Criteria();
		cri.setPageNum(1);
		cri.setAmount(8);
		log.info("categoryProductList............");
		service.getListWithPaging("sofa", cri);
	}
}
