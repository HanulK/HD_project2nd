package org.kabart.domain;

/*
 * *Author : 이세아
 * *기능 : 제품 상세정보 내의 동일 prod_id의 중고제품 VO
 * 
 * */

import lombok.Data;

@Data
public class UsedProductVO {
	
	// prod_detail 내 중고제품 보여주는 VO 
	
	private int prod_id;
	private String grade;
	private int discount_rate;
	private int prod_price;
	private int used_price;
	private int up_id;
	
}
