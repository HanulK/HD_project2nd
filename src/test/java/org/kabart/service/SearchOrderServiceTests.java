package org.kabart.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* *Author : 남승현
 * 기능 : 사용자의 구매내역 조회시 활용되는 Service Test
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class SearchOrderServiceTests {

	@Setter(onMethod_ = @Autowired)
	private SearchOrederService service;

	/* *Author : 남승현
	 * 기능 : 신상품 구매내역 조회 기능 테스트
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 */
	@Test
	public void testSearchOrder() {
		String id = "test";
		String sd = "22/12/01";
		String ed = "22/12/30";
		service.getSearchNewList(id, sd, ed).forEach(item -> log.info(item));
	}
	
	/* *Author : 남승현
	 * 기능 : 중고상품 구매내역 조회 기능 테스트
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 */
	@Test
	public void testSearchUsedOrder() {
		String id = "anna";
		String sd = "22/12/01";
		String ed = "22/12/31";
		service.getSearchUsedList(id, sd, ed).forEach(item -> log.info(item));
	}
	
	/* *Author : 남승현
	 * 기능 : 판매 중인 중고상품 조회 기능 테스트
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 */
	@Test
	public void testSeacrhSelling() {
		String id = "anna";
		String sd = "22/12/01";
		String ed = "23/01/30";
		service.getSellingList(id, sd, ed).forEach(item -> log.info(item));
	}
	
	/* *Author : 남승현
	 * 기능 : 판매완료 된 중고상품 조회 기능 테스트
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 */
	@Test
	public void testSelledList() {
		String id = "test";
		String sd = "22/12/01";
		String ed = "22/12/31";
		service.getSelledList(id, sd, ed).forEach(item -> log.info(item));
	}
}