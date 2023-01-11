package org.kabart.domain;

import lombok.Data;

/**
 * 
 * @author 차민수
 * 기능 : 중고 상품 파일 업로드를 위한 첨부파일 VO
 *
 */

@Data
public class AttachVO {
	
	
	private String file_uuid;
	private String uploadPath;
	private String fileName;
	private Boolean fileType;
	
	private Integer up_id;


}
