package org.kabart.domain;

import lombok.*;

/* *Author : 남승현
 * 기능 : 주문 상품에 대한 컬럼 값 변경(리뷰 작성, 주문취소)에 대해, 필요한 데이터를 담은 VO
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UpdateOrderVO {
	
	private int order_id;
	private String mem_id;
	private int prod_id;
}
