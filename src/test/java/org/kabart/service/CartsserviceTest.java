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

/* *Author : 남승현
 * 기능 : 장바구니 기능에 활용되는 Service Test
 */
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class CartsserviceTest {
	@Setter(onMethod_ = { @Autowired })
	private CartsService service;
	
	/* *Author : 남승현
	 * 기능 : 사용자의 장바구니 상품 목록을 가져오는 기능 테스트
	 * 매개변수 : 사용자 아이디
	 */
	@Test
	public void testGetCarts() {
		log.info("testGetCarts");
		service.getList("tori").forEach(item->log.info(item));
	}

	/* *Author : 남승현
	 * 기능 : 담는 상품이 장바구니내 존재하는 지 판단하는 기능 테스트
	 * 매개변수 : 사용자 아이디, 상품 아이디, 상품 수량
	 */
	@Test
	public void isExist() {
		String result = service.isExist("test", 108607, 5);
		log.info("Insert or Update :"+result);
	}
	
	/* *Author : 남승현
	 * 기능 : 사용자의 장바구니내 상품 선택 삭제
	 * 매개변수 : 사용자 아이디, 상품 아이디 리스트
	 */
	@Test
	public void removeCart() {
		List<Integer> prod_id = new ArrayList<>();
		prod_id.add(8614);
		prod_id.add(44405);
		prod_id.add(78931);
		
		service.removeCart("tori", prod_id);
	}
	

}
