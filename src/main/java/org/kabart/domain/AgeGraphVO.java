package org.kabart.domain;

/*
 * *Author : 이세아
 * *기능 : 제품 상세정보 내의 구매자 분석 그래프 중 연령대 분석 그래프의 VO
 * 
 * */

import lombok.Data;

@Data
public class AgeGraphVO {
	
	private int prod_id;
	private double cnt;

}
