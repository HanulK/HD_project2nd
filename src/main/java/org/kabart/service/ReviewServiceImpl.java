package org.kabart.service;

import java.util.List;

import org.kabart.domain.ReviewVO;
import org.kabart.mapper.ReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReviewServiceImpl implements ReviewService{
	
	@Setter(onMethod_ = @Autowired)
	private ReviewMapper mapper;

	@Override
	public int insert(ReviewVO vo) {
		log.info("insert Review.................." + vo);
		return mapper.insert(vo);
	}

	@Override
	public List<ReviewVO> get(int prod_id) {
		log.info("get review.................." + prod_id);
		return mapper.get(prod_id);
	}

	
}
