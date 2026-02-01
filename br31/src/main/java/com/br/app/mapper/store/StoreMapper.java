package com.br.app.mapper.store;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.store.StoreDTO;


public interface StoreMapper {
	
	//최대 100개까지 조회
	List<StoreDTO> select(@Param("service_info") String[] service_info,
			@Param("store_name") String store_name,
			@Param("sido") String sido,
			@Param("sigungu") String sigungu,@Param("store_type") String[] store_type) throws SQLException;
	
	
}
