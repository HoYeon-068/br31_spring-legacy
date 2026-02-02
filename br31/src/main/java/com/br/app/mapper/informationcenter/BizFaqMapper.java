package com.br.app.mapper.informationcenter;

import java.sql.SQLException;
import java.util.List;

import com.br.app.domain.informationcenter.BizFaqDTO;


public interface BizFaqMapper {
	
	//전체 FAQ 가져오기
	List<BizFaqDTO> select() throws SQLException;
}
