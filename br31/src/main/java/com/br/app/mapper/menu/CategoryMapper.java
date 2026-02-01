package com.br.app.mapper.menu;

import java.sql.SQLException;
import java.util.List;

import com.br.app.domain.menu.CategoryDTO;


public interface CategoryMapper {
	//카테고리 정보 전부 가져오기
	List<CategoryDTO> select() throws SQLException;
}
