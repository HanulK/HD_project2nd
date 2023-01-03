package org.kabart.service;

import org.kabart.domain.CartsVO;

public interface CartsService {
//	public void cartsadd(CartsVO carts);
	public void getList(CartsVO carts);
	public String isExist(String mem_id, int prod_id,int quantity);
}
