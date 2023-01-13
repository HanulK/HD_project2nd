package org.kabart.mapper;

/*
 * *Author : 이세아, 남승현
 * *기능 : 상세제품 리뷰 & 구매 후 리뷰 등록 Mapper
 * 
 * */

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.ReviewVO;

public interface ReviewMapper {
	
	public int insert(@Param("vo")ReviewVO vo);

	public List<ReviewVO> get(
			@Param("prod_id") int prod_id);
	
}
