package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.SearchOrderUsedVO;
import org.kabart.domain.SearchOrderVO;
/* *Author : 남승현
 * 기능 : 주문 내역 조회시 활용될 쿼리 선언
 */
public interface SearchOrderMapper {
	/* *Author : 남승현
	 * 기능 : 신상품 구매내역 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	public List<SearchOrderVO> getSearchNewList(
			@Param("user_id")String user_id, 
			@Param("start_date")String start_date, 
			@Param("end_date")String end_date);
	
	/* *Author : 남승현
	 * 기능 : 중고상품 구매내역 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	public List<SearchOrderUsedVO> getSearchUsedList(
			@Param("user_id")String user_id, 
			@Param("start_date")String start_date, 
			@Param("end_date")String end_date);
	
	/* *Author : 남승현
	 * 기능 : 판매 중인 중고상품 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	public List<SearchOrderUsedVO> getSellingList(
			@Param("user_id")String user_id, 
			@Param("start_date")String start_date, 
			@Param("end_date")String end_date
			);
	
	/* *Author : 남승현
	 * 기능 : 판매완료 된 중고상품 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	public List<SearchOrderUsedVO> getSelledList(
			@Param("user_id")String user_id, 
			@Param("start_date")String start_date, 
			@Param("end_date")String end_date
			);
	
	
			
	
	
}
