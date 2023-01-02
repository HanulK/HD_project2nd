package org.kabart.domain;

import lombok.Data;

@Data
public class AttachVO {
	
	private int up_id;
	private String file_uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	

}
