package org.kabart.service;

import java.util.List;

import org.kabart.domain.OrderVO;

public interface OrderService {

	public List<OrderVO> getProducts(List<String> pids, int isUsed);

	public int insertProducts(String mem_id, String addr, String addr_dt, String phone, String dname,
			 List<String> prod_id,  List<String> quantity, String isUsed);

}
