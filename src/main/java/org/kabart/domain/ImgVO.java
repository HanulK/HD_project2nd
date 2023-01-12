package org.kabart.domain;

/*
 * *Author : 이세아
 * *기능 : 제품 상세정보 내의 제품 id에 따른 썸네일과 상세정보사진 VO
 * 
 * */

import lombok.Data;

@Data
public class ImgVO {
	
	private String img_srcs;
	private String img_tag;
	private int prod_id;
	private int rownum;

}
