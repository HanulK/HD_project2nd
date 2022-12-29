package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.SearchOrderVO;

public interface SearchOrderMapper {
	public List<SearchOrderVO> getSearchList(
			@Param("user_id")String user_id, 
			@Param("start_date")String start_date, 
			@Param("end_date")String end_date,
			@Param("is_used") int is_used);
}
