package org.kabart.mapper;

import java.util.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* *Author : 남승현
 * 기능 : 장바구니 Mapper의 테스트
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
      "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
      "file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class CartMapperTest {

	@Setter(onMethod_ = @Autowired)
	private CartsMapper mapper;
	
	/* *Author : 남승현
	 * 기능 : 사용자의 아이디와 상품 번호를 받아 장바구니내에 동일 상품이 존재하는지 여부 판단
	 * 매개변수 : 사용자 아이디, 상품 번호   
	 */
	@Test
	public void testIsExist() {
		log.info(mapper.isExist("test", 8614));
	}

	/* *Author : 남승현
	 * 기능 : 장바구니 상품 수량 조절
	 * 매개변수 : 사용자 아이디, 상품 번호, 상품 수량 
	 * 기타 : 넘어온 수량만큼 기존 수량에 추가로 더해줌  
	 */
	@Test
	public void testUpdate() {
		log.info(mapper.quantityUpdate("test", 8614, 3));
	}
	
	/* *Author : 남승현
	 * 기능 : 장바구니 상품 목록 가져오기 테스트
	 * 매개변수 : 사용자 아이디
	 */
	@Test
	public void testGetCarts() {
		mapper.getCarts("tori").forEach(item -> log.info(item));
	}

	/* *Author : 남승현
	 * 기능 : 장바구니 상품 선택 삭제
	 * 매개변수 : 사용자 아이디, 상품 번호 리스트
	 * 기타 : 여러 개의 상품이 넘어오는 경우를 위해 상품 아이디를 List형태로 받아옴  
	 */
	@Test
	public void removeCart() {
		List<Integer> prod_id = new ArrayList<>();
		prod_id.add(42431);
		prod_id.add(44405);
		prod_id.add(78931);
		log.info(mapper.removeCart("tori",42431));
	}
	
}

