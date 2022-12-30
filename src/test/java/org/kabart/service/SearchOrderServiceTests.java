package org.kabart.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class SearchOrderServiceTests {

	@Setter(onMethod_ = @Autowired)
	private SearchOrederService service;

	@Test
	public void testSearchOrder() {
		String id = "test";
		String sd = "22/12/01";
		String ed = "22/12/30";
		int isUsed = 0;
		service.getSearchList(id, sd, ed, isUsed).forEach(item -> log.info(item));
	}
}
