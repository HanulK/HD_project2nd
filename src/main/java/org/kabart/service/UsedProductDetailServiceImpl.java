package org.kabart.service;

import org.kabart.domain.UsedProductDetailVO;
import org.kabart.mapper.*;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class UsedProductDetailServiceImpl implements UsedProductDetailService{
	
	private UsedProductDetailMapper mapper;

	@Override
	public UsedProductDetailVO read(int up_id) {
		log.info("Used Product Detail.........");
		return mapper.read(up_id);
	}

	/*
	 * @Override public int delete(int up_id) {
	 * log.info("Delete Used Product Detail........."); return mapper.delete(up_id);
	 * }
	 * 
	 * @Override public boolean update(UsedProductDetailVO upused) {
	 * log.info("Delete Used Product Detail........."); return mapper.update(upused)
	 * == 1; }
	 */

}
