package com.br.app.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
	
	String getTime();
	
	// TimeMapper.xml 매퍼 파일  X
	@Select("SELECT sysdate + 1 FROM dual")
	String getNextTime(); // 다음 날짜(내일) 반환하는 메서드

}
