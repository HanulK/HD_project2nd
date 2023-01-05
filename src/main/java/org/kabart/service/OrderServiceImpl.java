package org.kabart.service;

import java.util.List;

import org.kabart.domain.OrderVO;
import org.kabart.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class OrderServiceImpl implements OrderService{
	
	@Setter(onMethod_= {@Autowired})
	private OrderMapper oMapper;
	
	@Override
	public List<OrderVO> getProducts(List<String> pids,int isUsed) {
		List<OrderVO> result;
		if(isUsed==1) {
			result = oMapper.getUsedList(pids.get(0));
		}else {
			result = oMapper.getNewList(pids);
		}
		return result;
	}

}
