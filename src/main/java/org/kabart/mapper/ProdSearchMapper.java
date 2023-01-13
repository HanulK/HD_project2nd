package org.kabart.mapper;

import java.util.List;

import org.kabart.domain.*;

/*작성자 : 박정훈
*기능 : getListWithPaging2과 getTotalCount은 모든 검색처리와 검색된 게시물의 수와 페이징 처리역할.
* getTotalCount를 정의하고 XML을 이용해서 SQL을 처리한다.
*/ 
public interface ProdSearchMapper {
	
	public List<ProductListVO> getListWithPaging2(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	
}
