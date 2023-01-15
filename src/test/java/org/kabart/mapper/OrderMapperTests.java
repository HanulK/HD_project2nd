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

/* *Author : 남승현
 * 기능 : 주문서 생성 및 상품 데이터 삽입, 주문 상태 변경
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class OrderMapperTests {
	
	@Setter(onMethod_= @Autowired)
	private OrderMapper oMapper;
	
	/* *Author : 남승현
	 * 기능 : 주문에 필요한 신상품 데이터를 가져옴
	 * 매개변수 : 상품 번호 리스트
	 */
	@Test
	public void testGetNew() {
		List<String> list = new ArrayList<>();
		list.add("152171");
		list.add("171131");
		list.add("60088");
		oMapper.getNewList(list).forEach(item -> log.info(item));
	}
	
	/* *Author : 남승현
	 * 기능 : 주문에 필요한 중고상품을 가져옴
	 * 매개변수 : 중고상품 번호
	 */
	@Test
	public void testUsed() {
		log.info(oMapper.getUsedList("41"));
	}
	
	/* *Author : 남승현
	 * 기능 : 주문서 생성
	 * 매개변수 : 사용자 아이디, 주소, 상세주소, 휴대폰번호, 받는 사람   
	 */
	@Test
	public void insertOD() {
		oMapper.orderID("dodo", "강북구 한천로140길 46", "123호", "010515223372","port");
	}
	
	/* *Author : 남승현
	 * 기능 : 주문서내 주문상세 (상품 데이터)를 넣음
	 * 매개변수 : 사용자 아이디, 상품 아이디, 수량, 중고여부, 리뷰 상태   
	 */
	@Test
	public void insertProduct() {
		oMapper.insertOrders("dodo", "45189", "3", "0", "0");
	}

	/* *Author : 남승현
	 * 기능 : 리뷰 작성 후, 상세 주문에 대한 리뷰 상태 변경
	 * 매개변수 : 주문 번호, 사용자 아이디, 상품 번호   
	 */
	@Test
	public void updateReview() {
		UpdateOrderVO uVO = new UpdateOrderVO(50, "dodo", 60088);
		oMapper.orderCancle(uVO);
	}
}
