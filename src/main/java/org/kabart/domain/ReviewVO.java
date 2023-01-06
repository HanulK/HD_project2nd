package org.kabart.domain;

import java.util.Date;

import lombok.*;

@Data
@AllArgsConstructor
public class ReviewVO {
	
	private int order_id;
	private String mem_id;
	private String rv_text;
	private String rv_date;
	private int prod_id;

}
