package org.kabart.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.UsedSellVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
 *
 * @author @차민수
 * @Date 2023. 1. 11.
 * @기능  중고 상품 등록, 조회, 수정, 삭제 Service 테스트
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class UsedSellServiceTests {

	@Setter(onMethod_ = @Autowired)
	private UsedSellService usedSellService;
	
//	@Test
//	public void testInsert() {
//		UsedSellVO usedSellVO = new UsedSellVO();
//		usedSellVO.setProd_id(171130);
//		usedSellVO.setMem_id("doongdoong");
//		usedSellVO.setGrade("ROYAL");
//		usedSellVO.setUp_comment("여섯번째 서비스단 테스트 중입니다.");
//		
//		usedSellService.registerUsedProduct(usedSellVO);
//		
//		log.info("생성된 게시물의 번호" + usedSellVO.getUp_id());
//		log.info(usedSellVO);
//	}
	
	@Test
	public void testUpdate() {
		
		UsedSellVO sellVO = new UsedSellVO();
		
		sellVO.setUp_id(70);
		sellVO.setUp_comment("서비스단 업데이트 테스트");
		log.info("수정 결과 : " + usedSellService.modifyUsedProduct(sellVO));
	}
	
//	@Test
//	public void testRemove() {
//		
//		log.info("삭제 결과"  + usedSellService.removeUsedProduct(64));
//	}
}
