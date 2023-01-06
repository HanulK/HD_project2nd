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
public class GraphMapperTests {
	
	@Setter(onMethod_ = {@Autowired})
	private GraphMapper mapper;
	
	@Test
	public void testFamilyMapper() {
		List<FamilyGraphVO> list = mapper.family(45189);
		list.forEach(family -> log.info(family));
	}
	
	@Test
	public void testAgeMapper() {
		List<AgeGraphVO> list = mapper.age(45189);
		list.forEach(age -> log.info(age));
	}

}
