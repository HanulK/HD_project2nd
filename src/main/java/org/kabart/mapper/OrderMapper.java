package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.*;
/* *Author : 남승현
 * 기능 : 상품 주문에 필요한 쿼리 선언 
 */
public interface OrderMapper {
	/* *Author : 남승현
	 * 기능 : 신상품 주문 시, 상품데이터를 가져올 떄 활용 
	 * 매개변수 : 상품 아이디 리스트  
	 */
	public List<OrderVO> getNewList(List<String> prod_id);

	/* *Author : 남승현
	 * 기능 : 중고상품 주문 시, 상품데이터를 가져올 떄 활용 
	 * 매개변수 : 상품 아이디  
	 */
	public List<OrderVO> getUsedList(String prod_id);
	
	/* *Author : 남승현
	 * 기능 : 주문 시, 주문서 생성 기능  
	 * 매개변수 : 사용자 아이디, 주소, 상세주소, 휴대폰번호, 수령자 이름 
	 */
	public int orderID(@Param("mem_id") String mem_id, @Param("addr") String addr,
			@Param("addr_detail") String addr_detail, @Param("phone") String phone, @Param("dname") String dname);
	
	/* *Author : 남승현
	 * 기능 : 주문서 내, 각 상품에 대한 정보 추가  
	 * 매개변수 : 사용자 아이디, 상품 아이디, 수량, 중고상품 여부, 리뷰 작성여부
	 */
	public int insertOrders(@Param("mem_id") String mem_id, @Param("prod_id") String prod_id,
			@Param("quantity") String quantity, @Param("isUsed") String isUsed,
			@Param("review_check") String review_check);
	
	/* *Author : 남승현
	 * 기능 : 중고상품 구매 시, 중고 상품 정보 변경 
	 * 매개변수 : 중고상품 아이디, 구매자 아이디
	 */
	public int updateUsed(@Param("up_id") String up_id, @Param("p_id")String p_id);
	
	/* *Author : 남승현
	 * 기능 : 리뷰 작성 시, 리뷰 상태 변경  
	 * 매개변수 : 주문 상태 업데이트 객체 (주문 아이디, 사용자 아이디, 상품 아이디)
	 */
	public int reviewCheck(@Param("uVO")UpdateOrderVO uVO);
	
	/* *Author : 남승현
	 * 기능 : 주문 취소 시, 주문 상태 변경  
	 * 매개변수 : 주문 상태 업데이트 객체 (주문 아이디, 사용자 아이디, 상품 아이디)
	 */
	public int orderCancle(@Param("uVO")UpdateOrderVO uVO);

}
