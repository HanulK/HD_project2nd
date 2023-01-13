package org.kabart.service;


import java.util.List;

import org.kabart.domain.CartsVO;
import org.kabart.mapper.CartsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* *Author : 남승현
 * 기능 : 장바구니 서비스 및 내부 로직 구현
 */
@Log4j
@Service
public class CartsServicelmpl implements CartsService {
	
	// CartMapper 의존성 주입 
	@Setter(onMethod_ = @Autowired)
	private CartsMapper mapper;
	
	/* *Author : 남승현
	 * 기능 : 장바구니 상품 목록을 불러옴
	 * 매개변수 : 사용자 아이디
	 */
	@Override
	public List<CartsVO> getList(String mem_id) {
		log.info("getCartList");

		return mapper.getCarts(mem_id);

	}
	
	/* *Author : 남승현
	 * 기능 : 장바구니내에 상품존재 여부에 따라, 장바구니에 추가 혹은 수량 변경
	 * 매개변수 : 사용자 아이디, 상품 아이디, 수량
	 * 기타 : 상품이 존재하는지 여부를 판단하는 쿼리와 상품 추가 혹은 수량 변경하는 쿼리가
	 * 		  일련의 과정으로 처리되어야해서 트랜잭션 어노테이션을 활용
	 */
	@Transactional
	@Override
	public String isExist(String mem_id, int prod_id, int quantity) {
		int check = mapper.isExist(mem_id, prod_id);
		int result = 0;
		if (check == 0) {
			log.info("Product : "+prod_id+"is Exist");
			result = mapper.insert(mem_id, prod_id, quantity);
		} else {
			log.info("Product : "+prod_id+"is Exist");
			result = mapper.quantityUpdate(mem_id, prod_id, quantity);
		}
		System.out.println("서비스 결과 : " + result);
		return result == 1 ? "success" : "fail";
	}

	/* *Author : 남승현
	 * 기능 : 장바구니 상품 선택 삭제
	 * 매개변수 : 사용자 아이디, 상품 아이디 목록 
	 * 기타 : 상품 아이디가 여러 개인 경우, 한번에 처리하기위해 트랜잭션 어노테이션 활용
	 */
	@Transactional
	@Override
	public int removeCart(String mem_id, List<Integer> prod_id)  {
		int result = 0;
		for(int id : prod_id) {
			result +=mapper.removeCart(mem_id, id);
		}

		return result;
	}
	
	/* *Author : 남승현
	 * 기능 : 장바구니 상품 전체 삭제
	 * 매개변수 : 사용자 아이디
	 */
	@Override
	public int removeCartAll(String mem_id) {
		
		return mapper.removeCartAll(mem_id);
	}

	


}
