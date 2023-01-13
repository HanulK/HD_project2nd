package org.kabart.service;

import java.util.List;

import org.kabart.domain.*;
import org.kabart.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
/* *Author : 남승현
 * 기능 : 리뷰 기능에 대한 서비스 구현 
 */
@Service
@Log4j
public class ReviewServiceImpl implements ReviewService{
	
	// 리뷰관련 Mapper 의존성 주입
	@Setter(onMethod_ = @Autowired)
	private ReviewMapper rMapper;
	
	// 주문관련 Mapper 의존성 주입
	@Setter(onMethod_=@Autowired)
	private OrderMapper oMapper;
	
	/* *Author : 남승현
	 * 기능 : 넘어온 리뷰 인스턴스를 리뷰 테이블에 넣은 후, 주문 상품에 대한 review_check 컬럼 변경
	 * 매개변수 : 리뷰 인스턴스(주문번호, 사용자 아이디, 리뷰내용, 작성일, 상품 아이디)
	 * 기타 : 리뷰 작성 후, 주문 상품의 review_check 컬럼의 변경을 일련의 과정을 통해 처리하기위해
	 *        트랜잭션 어노테이션 적용    
	 */
	@Transactional
	@Override
	public int insert(ReviewVO vo) {
		log.info("insert Review.................." + vo);
		int result = 0;
		result = rMapper.insert(vo);	
		UpdateOrderVO uVO = new UpdateOrderVO(vo.getOrder_id(), vo.getMem_id(), vo.getProd_id());
		oMapper.reviewCheck(uVO);
		return result;
	}
	
	/* *Author : 남승현
	 * 기능 : 상품 상세페이지 조회 시, 해당 상품에 대한 리뷰를 불러옴 
	 * 매개변수 : 상품 아이디    
	 */
	@Override
	public List<ReviewVO> get(int prod_id) {
		log.info("get review.................." + prod_id);
		return rMapper.get(prod_id);
	}

	
}
