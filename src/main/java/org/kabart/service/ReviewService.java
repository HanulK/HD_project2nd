package org.kabart.service;

/*
 * *Author : 이세아, 남승현
 * *기능 : 상세제품정보 내의 제품 후기에 해당 제품에 쓰인 리뷰를 보여주는 Service,
 * 		  제품 구매확정 후 마이페이지에서 리뷰를 insert 하기 위한 Service
 * */

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.ReviewVO;

public interface ReviewService {
	
	public int insert(ReviewVO vo);
	
	public List<ReviewVO> get(@Param("prod_id") int prod_id);

}
