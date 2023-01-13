package org.kabart.service;

import java.util.List;

import org.kabart.domain.*;
/* *Author : 남승현
 * 기능 : 주문 시 서비스에서 사용될 인터페이스 
 */
public interface OrderService {
	/* *Author : 남승현
	 * 기능 : 장바구니 혹은 바로구매시 선택된 상품에 대한 정보를 불러옴   
	 * 매개변수 : 상품 아이디 리스트, 중고상품 여부
	 */
	public List<OrderVO> getProducts(List<String> pids, int isUsed);

	/* *Author : 남승현
	 * 기능 : 주문 시, 주문 내용에 대한 정보 생성 및 삽입  
	 * 매개변수 : 주문서 및 주문 상품 데이터 
	 */
	public int insertProducts(String mem_id, String addr, String addr_dt, String phone, String dname,
			 List<String> prod_id,  List<String> quantity, String isUsed);
	
	/* *Author : 남승현
	 * 기능 : 주문 취소  
	 * 매개변수 : 주문 상태 업데이트 객체 (주문 아이디, 사용자 아이디, 상품 아이디)
	 */
	public int orderCancle(UpdateOrderVO oVO);
}
