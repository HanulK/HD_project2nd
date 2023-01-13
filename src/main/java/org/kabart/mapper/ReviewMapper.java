package org.kabart.mapper;

/*
 * *Author : 이세아, 남승현
 * *기능 : 상세제품 리뷰 & 구매 후 리뷰 등록 Mapper
 * 
 * */


import java.util.*;


import org.apache.ibatis.annotations.Param;
import org.kabart.domain.ReviewVO;
/* *Author : 남승현
 * 기능 : 리뷰 작성 및 불러오기에 필요한 쿼리 적용  
 */
public interface ReviewMapper {
	/* *Author : 남승현
	 * 기능 : 주문 상품에 대한 리뷰 작성     
	 * 매개변수 : 리뷰 인스턴스(주문번호, 사용자 아이디, 리뷰내용, 작성일, 상품 아이디) 
	 */
	public int insert(@Param("vo")ReviewVO vo);

	/* *Author : 남승현
	 * 기능 : 상품에 대한 리뷰 가져오기     
	 * 매개변수 : 상품 아이디 
	 */
	public List<ReviewVO> get(
			@Param("prod_id") int prod_id);
	
}
