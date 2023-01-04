package org.kabart.service;

import org.kabart.domain.UsedSellVO;
import org.kabart.mapper.UsedSellMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UsedSellServiceImpl implements UsedSellService {
	
	@Setter(onMethod_ = @Autowired)
	private UsedSellMapper usedSellMapper;
	
	@Override
	public void registerUsedProduct(UsedSellVO usedSell) {
		
		usedSellMapper.insertUsedProduct(usedSell);
		
	}

}
