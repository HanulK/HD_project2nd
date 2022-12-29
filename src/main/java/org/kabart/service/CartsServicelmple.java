package org.kabart.service;

import org.kabart.mapper.CartsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public abstract class CartsServicelmple implements CartsService {

//	@Override
//	public void cartsadd(CartsVO carts) {
//		
//		log.info("carts-------------" + carts);
//		
//		mapper.insertSelectKey(carts);
//	}

	@Setter(onMethod_ = @Autowired)
	private CartsMapper mapper;

}
