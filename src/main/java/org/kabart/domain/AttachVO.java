package org.kabart.domain;

import lombok.Data;

@Data
public class AttachVO {
	
	
	private String file_uuid;
	private String uploadPath;
	private String fileName;
	private Boolean fileType;
	
	private Integer up_id;


}
