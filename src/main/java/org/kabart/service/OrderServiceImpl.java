package org.kabart.service;

import java.util.*;

import org.kabart.domain.*;
import org.kabart.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* *Author : 남승현
 * 기능 : 주문 서비스 구현 
 */
@Service
@Log4j
public class OrderServiceImpl implements OrderService{
	
	// 주문서 Mapper에 대한 의존성 주입 
	@Setter(onMethod_= {@Autowired})
	private OrderMapper oMapper;
	
	// 장바구니 Mapper에 대한 의존성 주입 
	@Setter(onMethod_= {@Autowired})
	private CartsMapper cMapper;
	
	/* *Author : 남승현
	 * 기능 : 주문서 내부의 상품데이터를 불러오는 기능   
	 * 매개변수 : 상품 아이디 리스트, 중고상품 여부
	 */
	@Override
	public List<OrderVO> getProducts(List<String> pids,int isUsed) {
		List<OrderVO> result;
		// 중고상품인 경우, 한가지의 상품만 구매하므로 List의 첫번째 요소 활용 
		if(isUsed!=0) {
			result = oMapper.getUsedList(String.valueOf(isUsed));
			log.warn("중고상품 구매"+result.get(0));
		}else {
			result = oMapper.getNewList(pids);
		}
		log.warn("getProducts");
		result.forEach(item-> log.info(item));
		return result;
	}

	/* *Author : 남승현
	 * 기능 : 주문서 및 주문 상품 데이터 생성 및 삽입   
	 * 매개변수 : 주문서 데이터 및 상품 데이터
	 * 기타 : 주문서 데이터 생성 후, 해당 주문번호를 사용해서 상품 데이터를 넣기때문에 트랜잭션 처리  
	 */
	@Transactional
	@Override
	public int insertProducts(String mem_id, String addr, String addr_dt, String phone, String dname,
			 List<String> prod_id, List<String> quantity, String isUsed) {
		oMapper.orderID(mem_id, addr, addr_dt, phone, dname);
		int result = 0;
		List<OrderVO> oVO = new ArrayList<>();
		String review_check ="0";
		// 중고상품의 경우 바로 구매확정이 되기떄문에 리뷰체크에 대한 값을 1로 설정 
		if(!isUsed.equals("0")) {
			review_check = "1";
			oMapper.updateUsed(isUsed, mem_id);
			log.warn("중고상품");
		}
		
		for(int i = 0 ;i<prod_id.size();i++) {
			result += oMapper.insertOrders(mem_id, prod_id.get(i), quantity.get(i), isUsed, review_check);
			log.warn("Insert Order : "+prod_id);
			cMapper.removeCart(mem_id, Integer.parseInt(prod_id.get(i)));
		}		
		return result;
	}

	/* *Author : 남승현
	 * 기능 : 주문 취소시, 주문 취소 날짜 변경   
	 * 매개변수 : 주문 상태 업데이트 객체 (주문 아이디, 사용자 아이디, 상품 아이디)
	 */
	@Override
	public int orderCancle(UpdateOrderVO oVO) {		
		return oMapper.orderCancle(oVO);
	}
	
	

}
