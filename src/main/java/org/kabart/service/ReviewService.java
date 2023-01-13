package org.kabart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.ReviewVO;
/* *Author : 남승현
 * 기능 : 리뷰 기능에 필요한 서비스 선언 
 */
public interface ReviewService {
	/* *Author : 남승현
	 * 기능 : 주문 상품에 대한 리뷰 작성  
	 */
	public int insert(ReviewVO vo);
	
	/* *Author : 남승현
	 * 기능 : 상품 조회시 리뷰를 불러오는 기능  
	 */
	public List<ReviewVO> get(@Param("prod_id") int prod_id);

}
