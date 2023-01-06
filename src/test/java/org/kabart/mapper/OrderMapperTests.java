package org.kabart.mapper;

import java.util.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.UpdateOrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class OrderMapperTests {
	
	@Setter(onMethod_= @Autowired)
	private OrderMapper oMapper;
	
	
	@Test
	public void testGetNew() {
		List<String> list = new ArrayList<>();
		list.add("152171");
		list.add("171131");
		list.add("60088");
		oMapper.getNewList(list).forEach(item -> log.info(item));
	}
	
	@Test
	public void testUsed() {
		log.info(oMapper.getUsedList("41"));
	}
	
	@Test
	public void insertOD() {
		oMapper.orderID("dodo", "안녕", "바보", "010515223372","port");
	}
	
	@Test
	public void insertProduct() {
		oMapper.insertOrders("dodo", "45189", "3", "0", "0");
	}
	
	@Test
	public void updateReview() {
		UpdateOrderVO uVO = new UpdateOrderVO(50, "dodo", 60088);
		oMapper.orderCancle(uVO);
		/* oMapper.orderCancle(uVO); */
	}
}
