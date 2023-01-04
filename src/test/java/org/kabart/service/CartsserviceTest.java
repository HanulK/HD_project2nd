package org.kabart.service;

import static org.junit.Assert.assertNotNull;

import java.util.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.service.CartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class CartsserviceTest {
	@Setter(onMethod_ = { @Autowired })
	private CartsService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testGetCarts() {
		log.info("testGetCarts");
		service.getList("tori").forEach(item->log.info(item));
	}
	
	@Test
	public void isExist() {
		String result = service.isExist("test", 108607, 5);
		log.info("Insert or Update :"+result);
	}
	@Test
	public void removeCart() {
		List<Integer> prod_id = new ArrayList<>();
		prod_id.add(8614);
		prod_id.add(44405);
		prod_id.add(78931);
		
		service.removeCart("tori", prod_id);
	}
	
	@Test
	public void updateCart() {
		service.updateCart("dodo", 60088, 2);
	}
}
