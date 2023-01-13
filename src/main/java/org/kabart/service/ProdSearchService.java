package org.kabart.service;

//작성자 : 박정훈 
// 기능 : 
import java.util.List;
import org.kabart.domain.*;
import org.springframework.stereotype.Service;

@Service
/* 작성자 : 박정훈
  기능 : searchProd, getTotal을 ProdSearchServicelmpl에서 사용하기 위해 선언.
 */
public interface ProdSearchService {

	public List<ProductListVO> searchProd(Criteria cri);

	int getTotal( Criteria cri);

	

	



}
