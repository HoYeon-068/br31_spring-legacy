package com.br.app.mapper.informationcenter;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.informationcenter.NewStoreBoardDTO;




public interface NewStoreBoardMapper {
	
	//글 가져오기
	List<NewStoreBoardDTO> selectList() throws SQLException;
	
	//글 하나 가져오기(상세보기)
	NewStoreBoardDTO selectOne(@Param("seq") int seq) throws SQLException;
	
	//글 가져오기 페이징 처리 o
	List<NewStoreBoardDTO> select(@Param("currentPage") int currentPage,@Param("numberPerPage") int numberPerPage,@Param("loc") String loc) throws SQLException;
	
	//페이지 수 반환
	int getTotalPages(@Param("numberPerPage") int numberPerPage,@Param("loc") String loc) throws SQLException;
	
	// 전체 count 테이블 조회값이 몇개 있는지 반환
	int getTotalNum(@Param("loc") String loc) throws SQLException;
	
	
	
	//이전 글번호 가져오기
	Integer getPrevId(@Param("sido") String sido,@Param("boardId") int boardId) throws SQLException;
	
	//다음 글번호 가져오기
	Integer getNextId(@Param("sido") String sido,@Param("boardId") int boardId) throws SQLException;
}
