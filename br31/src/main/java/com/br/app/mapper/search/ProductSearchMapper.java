package com.br.app.mapper.search;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.br.app.domain.search.ProductDTO;

public interface ProductSearchMapper {

    List<ProductDTO> selectSearchList(
            @Param("keyword") String keyword,
            @Param("categoryId") Long categoryId
    );

    int selectSearchCount(
            @Param("keyword") String keyword,
            @Param("categoryId") Long categoryId
    );
}
