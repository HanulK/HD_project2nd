package org.kabart.domain;

import lombok.*;

@NoArgsConstructor
@Data
@AllArgsConstructor
public class SearchVO {
	private String mem_id;
	private String start_date;
	private String end_date;
}
