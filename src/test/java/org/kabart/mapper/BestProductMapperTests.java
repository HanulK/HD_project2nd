package org.kabart.mapper;

/*
 * *Author : 이세아
 * *기능 : 메인에 나오는 베스트 상품 Mapper Test
 * 
 * */

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
public class BestProductMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BestProductMapper mapper;

	@Test
	public void testbestprod() {

		List<BestProductVO > list = mapper.bestprod();

		log.info(list);
	}

}
