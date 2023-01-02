package org.kabart.mapper;

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
public class UsedProductDetailMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private UsedProductDetailMapper mapper;
		
	@Test
	public void testRead() {
		UsedProductDetailVO up = mapper.read(24);
		
		log.info(up);
	}
	
	@Test
	public void testupdate() {
		
		UsedProductDetailVO up = new UsedProductDetailVO();
		
		up.setUp_id(23);
		up.setUp_comment("새벽엔 소켓이 거의 1시간이 안돌아가는 기이한 현상을 목격 빨리 자라는 거지");
	}

}
