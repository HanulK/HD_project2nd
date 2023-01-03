package org.kabart.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.UsedSellVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class UsedSellServiceTests {

	@Setter(onMethod_ = @Autowired)
	private UsedSellService usedSellService;
	
	@Test
	public void testInsert() {
		UsedSellVO usedSellVO = new UsedSellVO();
		usedSellVO.setProd_id(171130);
		usedSellVO.setMem_id("doongdoong");
		usedSellVO.setGrade("ROYAL");
		usedSellVO.setUp_comment("여섯번째 서비스단 테스트 중입니다.");
		
		usedSellService.registerUsedProduct(usedSellVO);
		
		log.info("생성된 게시물의 번호" + usedSellVO.getUp_id());
		log.info(usedSellVO);
	}
}
