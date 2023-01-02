package org.kabart.mapper;

import org.kabart.domain.UsedSellVO;

public interface UsedSellMapper {
	
	public void insert(UsedSellVO used);

	public void insertSelectKey(UsedSellVO used);

}
