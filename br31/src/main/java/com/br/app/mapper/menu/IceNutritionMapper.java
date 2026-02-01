package com.br.app.mapper.menu;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.menu.IceNutritionDTO;


public interface IceNutritionMapper {
	IceNutritionDTO select(@Param("products_id") int products_id) throws SQLException;
}
