package org.kabart.service;

import org.kabart.domain.CartsVO;
import org.kabart.mapper.CartsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CartsServicelmpl implements CartsService {

	@Setter(onMethod_ = @Autowired)
	private CartsMapper mapper;
	
	public void cart(CartsVO carts) {
		log.info("carts-------------" + carts);
	}

	@Override
	public void getList(CartsVO carts) {
	}

}
