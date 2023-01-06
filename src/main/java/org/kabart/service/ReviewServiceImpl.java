package org.kabart.service;

import java.util.List;

import org.kabart.domain.*;
import org.kabart.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReviewServiceImpl implements ReviewService{
	
	@Setter(onMethod_ = @Autowired)
	private ReviewMapper rMapper;
	
	@Setter(onMethod_=@Autowired)
	private OrderMapper oMapper;
	
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

	@Override
	public List<ReviewVO> get(int prod_id) {
		log.info("get review.................." + prod_id);
		return rMapper.get(prod_id);
	}

	
}
