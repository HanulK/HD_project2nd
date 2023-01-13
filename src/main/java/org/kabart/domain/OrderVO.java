package org.kabart.domain;

import lombok.*;


/* *Author : 남승현
 * 기능 : 주문시 필요한 데이터들을 모아놓음, 신상품과 중고상품이 모두 적용될 수 있도록 구현 
 */
@Data
@NoArgsConstructor
public class OrderVO {
	private int prod_id;
	private String prod_name;
	private int prod_price;
	private String img_srcs;
	private String prod_category;
	private int quantity;
	private int up_id;
	private String grade;
	private int discount_rate;
	
}
