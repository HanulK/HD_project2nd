package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.ReviewVO;

public interface ReviewMapper {
	
	public int insert(@Param("vo")ReviewVO vo);

	public List<ReviewVO> get(
			@Param("prod_id") int prod_id);
	
}
