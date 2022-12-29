package org.kabart.service;

import java.util.ArrayList;
import java.util.List;

import org.kabart.domain.SearchOrderVO;
import org.kabart.mapper.SearchOrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SearchOrederServiceImpl implements SearchOrederService {

	@Setter(onMethod_ = { @Autowired })
	private SearchOrderMapper sMapper;

	@Override
	public List<SearchOrderVO> getSearchList(String mem_id, String start_date, String end_date,int is_used) {
		List<SearchOrderVO> list = new ArrayList<>();
		list = sMapper.getSearchList(mem_id, start_date, end_date,is_used);
		log.info("getSearchList");
		return list;
	}
}
