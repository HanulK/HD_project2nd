package org.kabart.domain;

import lombok.*;

/**
 * 
 * @author 차민수, 박정훈
 * 기능 : 페이징 처리를 하기 위한 VO, type 와 keyword 변수추가 및 lombok을 이용하여 @Getter,@Setter 생성, 검색 조건에 배열을사용하기 위해서
*getTypeArr()를 이용하여 동적쿼리 태그 활용하기위한 기능.
 *
 */

@Getter
@Setter
@ToString
public class Criteria {
	
	private int pageNum;
	private int amount;
	private String prod_category;
	private String type;
	private String keyword;
	
	public Criteria() {
		this(1, 8);
	}
	
	
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public Criteria(String keyword) {
		this.keyword = keyword;
	
	}
	
	
	public String[] getTypeArr() {
		return type == null? new String[] {}  : type.split(""); 
	}
	

}
