package org.kabart.service;

import java.util.List;

import org.kabart.domain.SearchOrderVO;

public interface SearchOrederService {
	
	public List<SearchOrderVO> getSearchList(String mem_id, String start_date,String end_date,int is_used);
}
