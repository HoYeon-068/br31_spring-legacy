package com.br.app.mapper.menu;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.menu.ProductTagDTO;




public interface ProductTagMapper {
	List<ProductTagDTO> select(@Param("products_num") int products_num) throws SQLException;
	
	void insert(@Param("products_id") int products_id,@Param("tag") String tag)throws SQLException;
}
