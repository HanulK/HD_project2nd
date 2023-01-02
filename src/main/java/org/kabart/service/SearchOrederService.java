package org.kabart.service;

import java.util.List;

import org.kabart.domain.SearchOrderUsedVO;
import org.kabart.domain.SearchOrderVO;

public interface SearchOrederService {
	
	public List<SearchOrderVO> getSearchNewList(String mem_id, String start_date,String end_date);
	public List<SearchOrderUsedVO> getSearchUsedList(String mem_id, String start_date,String end_date);
	public List<SearchOrderUsedVO> getSellingList(String mem_id, String start_date,String end_date);
	public List<SearchOrderUsedVO> getSelledList(String mem_id, String start_date,String end_date);
}
