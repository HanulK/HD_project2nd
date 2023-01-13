package org.kabart.service;

/*
 * *Author : 이세아
 * *기능 : 메인 화면의 베스트 상품 Service
 * 
 * */

import java.util.List;

import org.kabart.domain.BestProductVO;

public interface BestProductService {
	
	public List<BestProductVO> bestprod();

}
