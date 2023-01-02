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
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ProductDetailServiceTests {

	@Setter(onMethod_ = @Autowired)
	private ProductDetailService service;

	@Test
	public void productDetail() {
		log.info("product detail test");
		int prod_id = 146812;
		service.getProdDetail(prod_id);
	}

	@Test
	public void productDetailimgs() {
		log.info("product detail imgs test");
		int prod_id = 146812;
		service.getdetailImgs(prod_id).forEach(d -> log.info(d));
	}
	
	@Test
	public void productDetailuseds() {
		log.info("product detail used test");
		int prod_id = 146812;
		service.getused(prod_id).forEach(d -> log.info(d));
	}
	
	/*
	 * @Test public void shopname() { log.info("product detail shop test"); int
	 * prod_id = 146812; service.getShop(prod_id).forEach(d -> log.info(d)); }
	 */

}
