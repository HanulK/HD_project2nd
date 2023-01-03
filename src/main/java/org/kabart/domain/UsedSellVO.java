package org.kabart.domain;

import java.util.*;

import lombok.Data;

@Data
public class UsedSellVO {
	
	private int up_id;
	private int prod_id;
	private String mem_id;
	private String grade;
	private Date up_regdate;
	private String up_comment;
	
}
