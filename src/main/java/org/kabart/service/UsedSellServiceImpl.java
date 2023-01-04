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
	public boolean modifyUsedProduct(UsedSellVO usedSell) {
		
		log.info("modify,,,,,,,,," + usedSell);
		return usedSellMapper.updateUsedProduct(usedSell) == 1;
	}

	@Override
	public boolean removeUsedProduct(int up_id) {
		
		log.info("remove ,,,,,,," + up_id);
		return usedSellMapper.deleteUsedProduct(up_id) == 1;
	}
	
	@Override
	public void registerUsedProduct(UsedSellVO usedSell) {
		
		usedSellMapper.insertUsedProduct(usedSell);
		
	}

}
