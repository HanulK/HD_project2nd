package org.kabart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.ReviewVO;

public interface ReviewService {
	
	public int insert(ReviewVO vo);
	
	public List<ReviewVO> get(@Param("prod_id") int prod_id);

}
