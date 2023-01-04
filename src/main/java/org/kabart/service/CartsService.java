package org.kabart.service;

import java.util.List;

import org.kabart.domain.CartsVO;

public interface CartsService {
//	public void cartsadd(CartsVO carts);
	public List<CartsVO> getList(String mem_id);
	public String isExist(String mem_id, int prod_id,int quantity);
	public int removeCart(String mem_id, List<Integer> prod_id) ;
	public void deleteAllCart(String mem_id);
}
