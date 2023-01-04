package org.kabart.domain;

import lombok.*;

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
	
	
	
	public String[] getTypeArr() {
		return type == null? new String[] {}  : type.split(""); 
	}
}
