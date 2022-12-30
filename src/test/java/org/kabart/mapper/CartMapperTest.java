package org.kabart.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class CartMapperTest {

	@Setter(onMethod_ = @Autowired)
	private CartsMapper mapper;
	
	
	@Test
	public void testGetList() {
		
		log.info("helloooooooo");
		//List<CartsVO> list = mapper.getList();
		//log.info(list.get(0));
		mapper.getList().forEach(cartlistout -> log.info(cartlistout));
	}
		
	
	
	@Test
	public void testinsert() {
	
		mapper.insert("test",108607,1);
		log.info("insert");

	}
		
	
}
