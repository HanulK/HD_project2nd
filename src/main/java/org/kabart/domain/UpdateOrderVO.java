package org.kabart.domain;

import lombok.*;

@Data
@AllArgsConstructor
public class UpdateOrderVO {
	
	private int order_id;
	private String mem_id;
	private int prod_id;
}
