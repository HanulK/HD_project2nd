package org.kabart.mapper;

/*
 * *Author : 이세아
 * *기능 : 상품 상세정보 Mapper Test
 * 
 * */

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.ProductDetailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ProductDetailMapperTest {

	@Setter(onMethod_ = @Autowired)
	private ProductDetailMapper mapper;

	@Test
	public void testGetProductDetail() {

		ProductDetailVO detail = mapper.get(146812);
		log.info(detail);

		detail.getShops().forEach(shop -> log.info(shop));
	}

	@Test
	public void testGetImgs() {
		mapper.getdetailImgs(146812).forEach(imgs -> log.info(imgs));
	}

	@Test
	public void testGetUsed() {
		mapper.getused(146812).forEach(use -> log.info(use));
	}

}
