package org.kabart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kabart.domain.SearchOrderUsedVO;
import org.kabart.domain.SearchOrderVO;

public interface SearchOrderMapper {
	public List<SearchOrderVO> getSearchNewList(
			@Param("user_id")String user_id, 
			@Param("start_date")String start_date, 
			@Param("end_date")String end_date);
	
	public List<SearchOrderUsedVO> getSearchUsedList(
			@Param("user_id")String user_id, 
			@Param("start_date")String start_date, 
			@Param("end_date")String end_date);
	
	public List<SearchOrderUsedVO> getSellingList(
			@Param("user_id")String user_id, 
			@Param("start_date")String start_date, 
			@Param("end_date")String end_date
			);
	public List<SearchOrderUsedVO> getSelledList(
			@Param("user_id")String user_id, 
			@Param("start_date")String start_date, 
			@Param("end_date")String end_date
			);
	
	
			
	
	
}
