package com.br.app.mapper.search;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.search.BoardSearchDTO;

public interface BoardSearchMapper {

    int countAll(@Param("keyword") String keyword);

    List<BoardSearchDTO> searchAll(
            @Param("keyword") String keyword,
            @Param("startRow") int startRow,
            @Param("endRow") int endRow
    );
}
