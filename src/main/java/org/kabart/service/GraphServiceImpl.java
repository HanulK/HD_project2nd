package org.kabart.service;

/*
 * *Author : 이세아
 * *기능 : 상세 제품 정보 내의 소비자 분석표를 위한 Service Implements
 * 
 * */

import java.util.List;

import org.kabart.domain.*;
import org.kabart.mapper.GraphMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class GraphServiceImpl implements GraphService{
	
	@Setter(onMethod_ = {@Autowired})
	private GraphMapper mapper;

	@Override
	public List<FamilyGraphVO> family(int prod_id) {
		log.info("Family Graph service...........");
		return mapper.family(prod_id);
	}

	@Override
	public List<AgeGraphVO> age(int prod_id) {
		log.info("Age Graph service............");
		return mapper.age(prod_id);
	}

}
