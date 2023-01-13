package org.kabart.domain;

import lombok.*;

/* *Author : 남승현
 * 기능 : 주문내역 시, 활용되는 데이터(사용자 아이디, 시작일, 종료일)을 모아만든 VO
 */
@NoArgsConstructor
@Data
@AllArgsConstructor
public class SearchVO {
	private String mem_id;
	private String start_date;
	private String end_date;
}
