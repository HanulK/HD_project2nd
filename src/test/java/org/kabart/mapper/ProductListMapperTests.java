package org.kabart.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.ProductListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j

public class ProductListMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ProductListMapper mapper;
	
//	@Test
//	public void testProductGetList() {
//		mapper.getProductList().forEach(productList -> log.info(productList));
//	}
	
	@Test
	public void testGetProductCategory() {
		mapper.getProductList("BED").forEach(productCategory -> log.info(productCategory));
	}
		
}
