package org.kabart.domain;

import java.util.Date;

import lombok.*;


/* *Author : 남승현
 * 기능 : 리뷰 테이블의 컬럼과 동일하게 구현하여, 리뷰에 대한 정보를 불러오고, 생성할 수 있도록 설정
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVO {
	
	private int order_id;
	private String mem_id;
	private String rv_text;
	private Date rv_date;
	private int prod_id;

}
