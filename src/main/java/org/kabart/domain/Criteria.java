package org.kabart.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.*;

/**
 * 
 * @author 차민수
 * 기능 : 페이징 처리를 하기 위한 VO
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
