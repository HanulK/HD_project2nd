package org.kabart.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*
 * 남승현 작성 +
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class SearchOrderMapperTests {

	@Setter(onMethod_ = { @Autowired })
	private SearchOrderMapper mapper;

	@Test
	public void getSearchNewTest() {
		mapper.getSearchNewList("test", "22/12/27", "22/12/30").forEach(orderItem -> log.info(orderItem));
	}

	@Test
	public void getSearcUsedTest() {
		mapper.getSearchUsedList("anna", "22/12/27", "22/12/31").forEach(test -> log.info(test));
	}
}
