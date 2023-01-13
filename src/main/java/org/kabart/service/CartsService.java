package org.kabart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.CartsVO;
import org.kabart.domain.ProductDetailVO;

/* *Author : 남승현
 * 기능 : 장바구니 서비스에서 활용될 메서드 선언  
 */
public interface CartsService {
	// 장바구니 상품 목록을 불러옴, 매개변수 : 사용자 아이디
	public List<CartsVO> getList(String mem_id);
	
	// 장바구니에 담는 상품 존재여부에 따라, 장바구니에 넣거나 혹은 수량 변경
	// 매개변수 : 사용자 아이디, 상품 아이디, 상품 수량
	public String isExist(String mem_id, int prod_id,int quantity);
	
	// 장바구니 선택상품 삭제, 매개변수 : 사용자 아이디, 상품 아이디 리스트  	
	public int removeCart(String mem_id, List<Integer> prod_id) ;

	// 장바구니 전체상품 삭제, 매개변수 : 사용자 아이디
	public int removeCartAll(String mem_id);


}
