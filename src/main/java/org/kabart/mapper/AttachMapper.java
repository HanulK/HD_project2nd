package org.kabart.mapper;

import java.util.List;

import org.kabart.domain.AttachVO;

public interface AttachMapper {
	
	public void insert(AttachVO vo);
	
	public void delete(String file_uuid);
	
	public List<AttachVO> findByup_id(int up_id);

}
