package org.kabart.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
@AllArgsConstructor
public class SearchVO {
	private String mem_id;
	private String start_date;
	private String end_date;
	private int is_used;
}
