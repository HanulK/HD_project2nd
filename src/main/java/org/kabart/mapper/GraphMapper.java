package org.kabart.mapper;

import java.util.List;

import org.kabart.domain.*;

public interface GraphMapper {
	
	public List<FamilyGraphVO> family(int prod_id);
	
	public List<AgeGraphVO> age(int prod_id);

}
