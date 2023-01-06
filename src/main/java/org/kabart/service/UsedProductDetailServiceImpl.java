package org.kabart.service;

import java.util.List;

import org.kabart.domain.*;
import org.kabart.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service

public class UsedProductDetailServiceImpl implements UsedProductDetailService{
	
	@Setter(onMethod_ = @Autowired)
	private UsedProductDetailMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private AttachMapper attachMapper;
	@Override
	public UsedProductDetailVO read(int up_id) {
		log.info("Used Product Detail.........");
		return mapper.read(up_id);
	}

	@Override
	public List<AttachVO> getAttachList(int up_id) {
		
		return null;
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
