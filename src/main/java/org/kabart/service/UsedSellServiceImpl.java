package org.kabart.service;

import org.kabart.domain.UsedSellVO;
import org.kabart.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UsedSellServiceImpl implements UsedSellService {
	
	@Setter(onMethod_ = @Autowired)
	private UsedSellMapper usedSellMapper;
	
	@Setter(onMethod_ = @Autowired)
	private AttachMapper attachMapper;
	
	@Transactional
	@Override
	public boolean modifyUsedProduct(UsedSellVO usedSell) {
		
		log.info("modify,,,,,,,,," + usedSell);
		
		attachMapper.deleteAll(usedSell.getUp_id());
		
		boolean modifyResult = usedSellMapper.updateUsedProduct(usedSell) == 1;
		
		if (modifyResult && usedSell.getAttachList() != null && usedSell.getAttachList().size() > 0) {
			usedSell.getAttachList().forEach(attach -> {
				
				attach.setUp_id(usedSell.getUp_id());
				attachMapper.insert(attach);
			});
		}
		return modifyResult;
	}
	
	@Transactional
	@Override
	public boolean removeUsedProduct(int up_id) {
		
		log.info("remove ,,,,,,," + up_id);
		attachMapper.deleteAll(up_id);
		return usedSellMapper.deleteUsedProduct(up_id) == 1;
	}
	
	@Transactional
	@Override
	public void registerUsedProduct(UsedSellVO usedSell) {
		
		usedSellMapper.insertUsedProduct(usedSell);

		if (usedSell.getAttachList() == null || usedSell.getAttachList().size() <= 0) {
			return;
		}
		
		usedSell.getAttachList().forEach(attach -> {
			attach.setUp_id(usedSell.getUp_id());
			attachMapper.insert(attach);
		});
		
	}

}
