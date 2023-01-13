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

/* *Author : 남승현
 * 기능 : 주문내역 서비스 구현, 내부 로직 처리     
 */
@Service
@Log4j
public class SearchOrederServiceImpl implements SearchOrederService {
	
	// 주문내역 조회 Mapper 의존성 주입 
	@Setter(onMethod_ = { @Autowired })
	private SearchOrderMapper sMapper;

	/* *Author : 남승현
	 * 기능 : 신상품 구매내역 조회     
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	@Override
	public List<SearchOrderVO> getSearchNewList(String mem_id, String start_date, String end_date) {
		List<SearchOrderVO> list = new ArrayList<>();
		list = sMapper.getSearchNewList(mem_id, start_date, end_date);
		log.info("getSearchNewList");
		return list;
	}
	
	/* *Author : 남승현
	 * 기능 : 중고상품 구매내역 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	@Override
	public List<SearchOrderUsedVO> getSearchUsedList(String mem_id, String start_date, String end_date) {
		List<SearchOrderUsedVO> list = new ArrayList<>();
		list = sMapper.getSearchUsedList(mem_id, start_date, end_date);
		log.info("getSearchOldList");
		return list;
	}
	
	/* *Author : 남승현
	 * 기능 : 판매 중인 중고상품 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	@Override
	public List<SearchOrderUsedVO> getSellingList(String mem_id, String start_date, String end_date) {
		log.info("getSellingList");
		return sMapper.getSellingList(mem_id, start_date, end_date);
	}

	/* *Author : 남승현
	 * 기능 : 판매완료 된 중고상품 조회    
	 * 매개변수 : 사용자 아이디, 시작날짜, 종료날짜 
	 */
	@Override
	public List<SearchOrderUsedVO> getSelledList(String mem_id, String start_date, String end_date) {
		log.info("getSelledList");
		return sMapper.getSelledList(mem_id, start_date, end_date);
	}

}
