package org.kabart.domain;

import java.util.*;

import lombok.Data;

@Data
public class UsedSellVO {
	
	private Integer up_id;
	private Integer prod_id;
	private String mem_id;
	private String grade;
	private Date up_regdate;
	private String up_comment;
	private List<AttachVO> attachList;
	
}
