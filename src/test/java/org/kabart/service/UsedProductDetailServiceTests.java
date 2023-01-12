package org.kabart.service;

/*
 * *Author : 이세아
 * *기능 : 중고제품 상세정보 Service Test
 * 
 * */


import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.UsedProductDetailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class UsedProductDetailServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private UsedProductDetailService service;
	
	@Test
	public void testRead() {
		log.info(service.read(24));
	}
	
	/*
	 * @Test public void testUpdate() { UsedProductDetailVO vo = service.read(27);
	 * 
	 * if(vo == null) { return; } vo.setUp_comment("내용을 또 수정해보는 서비스테스트걸");
	 * log.info("result.......... : " + service.update(vo)); }
	 */

}
