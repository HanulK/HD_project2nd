package org.kabart.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kabart.domain.SearchVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*
 * 남승현 작성
 * 기능 : 사용자의 주문내역을 조회하는 Mapper Test
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class SearchOrderMapperTests {

	@Setter(onMethod_ = { @Autowired })
	private SearchOrderMapper mapper;

	/* *Author : 남승현
	 * 기능 : 신상품 구매내역 조회 테스트
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 */
	@Test
	public void getSearchNewTest() {
		mapper.getSearchNewList("test", "22/12/27", "22/12/30").forEach(orderItem -> log.info(orderItem));
	}

	/* *Author : 남승현
	 * 기능 : 중고상품 구매내역 조회 테스트
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 */

	@Test
	public void getSearcUsedTest() {
		mapper.getSearchUsedList("anna", "22/12/27", "22/12/31").forEach(test -> log.info(test));
	}

	/* *Author : 남승현
	 * 기능 : 판매 중인 중고상품 조회 테스트
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 */
	@Test
	public void getSellingList() {
		mapper.getSellingList("anna", "22/12/27", "23/01/03").forEach(item -> log.info(item));

	}

	/* *Author : 남승현
	 * 기능 : 판매완료 된 중고상품 조회 테스트
	 * 매개변수 : 사용자 아이디, 시작일, 종료일
	 */
	@Test
	public void getSelledList() {
		mapper.getSelledList("test", "22/12/27", "23/01/31").forEach(item -> log.info(item));

	}
}
