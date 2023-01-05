package org.kabart.service;

import java.util.List;

import org.kabart.domain.OrderVO;

public interface OrderService {
	
	public List<OrderVO> getProducts(List<String> pids,int isUsed);
}
