package org.kabart.service;

import java.util.*;

import org.kabart.domain.OrderVO;
import org.kabart.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class OrderServiceImpl implements OrderService{
	
	@Setter(onMethod_= {@Autowired})
	private OrderMapper oMapper;
	
	@Setter(onMethod_= {@Autowired})
	private CartsMapper cMapper;
	
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

	
	/*
	 * private int prod_id; private String prod_name; private int prod_price;
	 * private String img_srcs; private String prod_category; private int quantity;
	 * private int up_id; private String grade; private int discount_rate;
	 */
	@Transactional
	@Override
	public int insertProducts(String mem_id, String addr, String addr_dt, String phone, String dname,
			 List<String> prod_id, List<String> quantity, String isUsed) {
		oMapper.orderID(mem_id, addr, addr_dt, phone, dname);
		int result = 0;
		List<OrderVO> oVO = new ArrayList<>();
		String review_check ="0";
		if(!isUsed.equals("0")) {
			review_check = "1";
			oMapper.updateUsed(isUsed, mem_id);
			log.warn("중고상품이십니당");
		}
		for(int i = 0 ;i<prod_id.size();i++) {
			result += oMapper.insertOrders(mem_id, prod_id.get(i), quantity.get(i), isUsed, review_check);
			log.warn("넣어봅시당");
			cMapper.removeCart(mem_id, Integer.parseInt(prod_id.get(i)));
		}
		
		
		return result;
	}

}
