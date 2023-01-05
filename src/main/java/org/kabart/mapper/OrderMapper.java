package org.kabart.mapper;

import java.util.List;

import org.kabart.domain.OrderVO;

public interface OrderMapper {
	
	public List<OrderVO> getNewList(List<String> prod_id);
	public List<OrderVO> getUsedList(String prod_id);
}
