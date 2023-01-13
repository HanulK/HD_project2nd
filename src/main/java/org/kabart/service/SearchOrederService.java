package org.kabart.service;

import java.util.List;

import org.kabart.domain.SearchOrderUsedVO;
import org.kabart.domain.SearchOrderVO;
/* *Author : 남승현
 * 기능 : 주문내역 조회 서비스의 인터페이스  
 */
public interface SearchOrederService {
	/* *Author : 남승현
	 * 기능 : 신상품 구매내역 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	public List<SearchOrderVO> getSearchNewList(String mem_id, String start_date,String end_date);
	
	/* *Author : 남승현
	 * 기능 : 중고상품 구매내역 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	public List<SearchOrderUsedVO> getSearchUsedList(String mem_id, String start_date,String end_date);
	
	/* *Author : 남승현
	 * 기능 : 판매 중인 중고상품 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	public List<SearchOrderUsedVO> getSellingList(String mem_id, String start_date,String end_date);
	
	/* *Author : 남승현
	 * 기능 : 판매완료 된 중고상품 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	public List<SearchOrderUsedVO> getSelledList(String mem_id, String start_date,String end_date);
}
