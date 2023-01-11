package org.kabart.domain;

import java.util.*;

import lombok.Data;

/**
 *
 * @author @차민수
 * @Date 2023. 1. 11.
 * @기능 : 중고 상품 판매를 위한 VO
 * 
 */
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
