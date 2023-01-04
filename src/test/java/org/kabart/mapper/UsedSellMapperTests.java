package org.kabart.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.UsedSellVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class UsedSellMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private UsedSellMapper mapper;
	
	
//	@Test
//	public void testInsert() {
//		UsedSellVO used = new UsedSellVO();
//		used.setProd_id(146812);
//		used.setMem_id("doongdoong");
//		used.setGrade("ROYAL");
//		used.setUp_comment("시퀀스 값 때문에 네번째 sell insert 매퍼 테스트 돌리는 중 SelectKey");
//		
//		mapper.insertUsedProduct(used);
//		
//		log.info(used);
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("delete count : " + mapper.deleteUsedProduct(72));
//	}
	
	@Test
	public void testUpdate() {
		
		UsedSellVO usedSellVO = new UsedSellVO();
		usedSellVO.setUp_id(70);
		usedSellVO.setUp_comment("업데이트 테스트");
		
		int count = mapper.updateUsedProduct(usedSellVO);
		
		log.info(count);
	}

}
