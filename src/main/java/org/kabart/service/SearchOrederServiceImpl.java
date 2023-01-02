package org.kabart.service;

import java.util.ArrayList;
import java.util.List;

import org.kabart.domain.SearchOrderUsedVO;
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
	public List<SearchOrderVO> getSearchNewList(String mem_id, String start_date, String end_date) {
		List<SearchOrderVO> list = new ArrayList<>();
		list = sMapper.getSearchNewList(mem_id, start_date, end_date);
		log.info("getSearchNewList");
		return list;
	}
	
	@Override
	public List<SearchOrderUsedVO> getSearchUsedList(String mem_id, String start_date, String end_date) {
		List<SearchOrderUsedVO> list = new ArrayList<>();
		list = sMapper.getSearchUsedList(mem_id, start_date, end_date);
		log.info("getSearchOldList");
		return list;
	}
	
	@Override
	public List<SearchOrderUsedVO> getSellingList(String mem_id, String start_date, String end_date) {
		log.info("getSellingList");
		return sMapper.getSellingList(mem_id, start_date, end_date);
	}

	@Override
	public List<SearchOrderUsedVO> getSelledList(String mem_id, String start_date, String end_date) {
		log.info("getSelledList");
		return sMapper.getSelledList(mem_id, start_date, end_date);
	}

}
