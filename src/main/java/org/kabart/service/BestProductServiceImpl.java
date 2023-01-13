package org.kabart.service;

/*
 * *Author : 이세아
 * *기능 : 메인 화면의 베스트 상품 Service Implements
 * 
 * */

import java.util.List;

import org.kabart.domain.BestProductVO;
import org.kabart.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BestProductServiceImpl implements BestProductService{
	
	@Setter(onMethod_ = @Autowired)
	private BestProductMapper mapper;

	@Override
	public List<BestProductVO> bestprod() {
		log.info("BestProduct list service...........");

		return mapper.bestprod();
	}

}
