package org.kabart.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ProdSearchMapperTest {

	@Setter(onMethod_ = @Autowired)
	private ProdSearchMapper mapper;
	
	
	@Test
	public void testSearch() {
		
		Criteria cri = new Criteria();
		cri.setKeyword("12312312312312312312312");
		cri.setType("T");
		
		List<ProductListVO> list = mapper.getListWithPaging2(cri);
		list.forEach(prodlist -> log.info(prodlist));
			
	}
}
