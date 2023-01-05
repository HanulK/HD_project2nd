package org.kabart.service;

import java.util.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class OrderServiceTests {
	
	@Setter(onMethod_= {@Autowired})
	private OrderService oService;
	
	
	@Test
	public void testGetProducts() {
		List<String> list = new ArrayList<>();
		list.add("146809");
		list.add("146811");
		list.add("149013");
		list.add("149012");
		int isUsed = 0;
		oService.getProducts(list, isUsed).forEach(item -> log.info(item));
		
	
	}
}
