package org.kabart.service;

import org.kabart.domain.CartsVO;
import org.kabart.mapper.CartsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CartsServicelmpl implements CartsService {



	@Setter(onMethod_ = @Autowired)
	private CartsMapper mapper;
	
	@Override
	public void getList(CartsVO carts) {
	}
	
	@Transactional
	@Override
	public String isExist(String mem_id, int prod_id,int quantity) {
		int check = mapper.isExist(mem_id, prod_id);
		int result = 0;
		if(check==0) {
			System.out.println("없는놈");
			result = mapper.insert(mem_id, prod_id, quantity);
		}else {
			System.out.println("이미있는놈");
			result = mapper.quantityUpdate(mem_id, prod_id, quantity);
		}
		System.out.println("서비스 결과 : "+result);
		return result==1?"success" : "fail";
	}
	

}
