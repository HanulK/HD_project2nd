package org.kabart.domain;

import lombok.*;

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
