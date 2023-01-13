package org.kabart.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

/* *Author : 남승현
 * 기능 : 구매내역 및 판매내역 조회 시 중고상품에 대한 정보를 담은 VO
 */
@Data
public class SearchOrderUsedVO {
	
	private String prod_name;
	private int prod_price;
	private String grade;
	private int discount_rate;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy/MM/dd")
	private Date up_regdate;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy/MM/dd")
	private Date sale_date;
	private String img_srcs;
	private String up_id;
}
