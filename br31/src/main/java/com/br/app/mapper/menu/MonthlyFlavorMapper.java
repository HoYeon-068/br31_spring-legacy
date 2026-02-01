package com.br.app.mapper.menu;

import java.sql.SQLException;

import com.br.app.domain.menu.MonthlyFlavorDTO;


public interface MonthlyFlavorMapper {
	MonthlyFlavorDTO select() throws SQLException;
}
