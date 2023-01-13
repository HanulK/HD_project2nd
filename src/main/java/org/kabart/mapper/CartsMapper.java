package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.CartsVO;
/* *Author : 남승현
 * 기능 : 장바구니에 추가, 수량 수정, 삭제, 읽기 등 필요한 기능 선언 
 */
public interface CartsMapper {
	
	// 장바구니에 상품 추가, 매개변수 : 사용자 아이디, 상품 아이디, 수량 
	public int insert(@Param("mem_id") String mem_id, @Param("prod_id") int prod_id, @Param("quantity") int quantity);

	// 장바구니에 상품 추가 시 존재여부 판단, 매개변수 : 사용자 아이디, 상품 아이디
	public int isExist(@Param("mem_id") String mem_id, @Param("prod_id") int prod_id);
	
	// 장바구니에 중복 상품 추가 시 수량 변경, 매개변수 : 사용자 아이디, 상품 아이디
	public int quantityUpdate(@Param("mem_id")String mem_id, @Param("prod_id") int prod_id,@Param("quantity") int quantity);
	
	// 장바구니 상품 목록을 불러옴, 매개변수 : 사용자 아이디
	public List<CartsVO> getCarts(@Param("mem_id") String mem_id);
	
	// 장바구니에 존재하는 상품 삭제, 매개변수 : 사용자 아이디, 상품 아이디  
	public int removeCart(@Param("mem_id") String mem_id, @Param("prod_id") int prod_id);
	
	// 장바구니 전체 비우기, 매개변수 : 사용자 아이디
	public int removeCartAll(String mem_id);
	
	
}

