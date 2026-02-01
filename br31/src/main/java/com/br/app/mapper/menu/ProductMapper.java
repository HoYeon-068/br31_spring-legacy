package com.br.app.mapper.menu;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.menu.IngredientDTO;
import com.br.app.domain.menu.MenuListDTO;
import com.br.app.domain.menu.ProductDTO;

public interface ProductMapper {
	//상품 하나를 조회
		ProductDTO selectOne(@Param("products_id") int products_id) throws SQLException;
		
		//전체 상품 리스트를 가져옴
		List<ProductDTO> select() throws SQLException;
		
		// /menu/list.jsp 화면에 출력될 상품들 정보를 전부 가저옴
		List<MenuListDTO> selectList(@Param("category_id") int category_id) throws SQLException;
		
		// 주재료 테이블에 관한 컬럼들을 조회
		List<IngredientDTO> selectIngredient(@Param("products_id") int products_id) throws SQLException;
		
		ProductDTO getPrev(@Param("categoryId") int categoryId,@Param("productsId") int productsId) throws SQLException;
		
		ProductDTO getNext(@Param("categoryId") int categoryId,@Param("productsId") int productsId) throws SQLException;
		
		//상품 삽입
		int insert(@Param("dto") ProductDTO dto) throws SQLException;
		
		//방금 생성된 상품의 id값 가져오기
		Integer getProductSeqNum() throws SQLException;
		
		//상품의 총 개수를 가져옴
		int getProductsCount() throws SQLException;
}
