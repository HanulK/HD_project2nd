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
	
	@Test
	public void testInsert() {
		UsedSellVO used = new UsedSellVO();
		used.setProd_id(146812);
		used.setMem_id("anna");
		used.setGrade("ROYAL");
		used.setUp_comment("sell insert 매퍼 테스트 돌리는 중");
		
		mapper.insert(used);
		
		log.info(used);
		
	}
	
	@Test
	public void testInsertSelectKey() {
		UsedSellVO used = new UsedSellVO();
		used.setProd_id(146812);
		used.setMem_id("anna");
		used.setGrade("ROYAL");
		used.setUp_comment("sell insert 매퍼 테스트 돌리는 중 SelectKey");
		
		mapper.insertSelectKey(used);
		
		log.info(used);
	}

}
