package org.kabart.service;

import java.util.List;

import org.kabart.domain.*;

public interface GraphService {
	
	public List<FamilyGraphVO> family(int prod_id);
	
	public List<AgeGraphVO> age(int prod_id);

}
