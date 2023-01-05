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
	
	
	/*
	 * String mem_id, String addr, String addr_dt, String phone, String dname,
	 * List<String> prod_id, List<String> quantity, String isUsed
	 */
	@Test
	public void insertOrder() {
		String mem_id = "dodo";
		String addr = "!@#";
		String addr_dt = "123";
		String phone = "01051523372";
		String dname = "햄뿡";
		List<String> prod_id = new ArrayList<String>();
		prod_id.add("146809");
		prod_id.add("146811");
		prod_id.add("149013");
		prod_id.add("149012");
		prod_id.add("108607");
		List<String> quantity = new ArrayList<>();
		quantity.add("3");
		quantity.add("3");
		quantity.add("3");
		quantity.add("1");
		quantity.add("2");
		String isUsed="0";
		log.info(oService.insertProducts(mem_id, addr, addr_dt, phone, dname, prod_id, quantity, isUsed));
	}
}
