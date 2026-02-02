package com.br.app.mapper.informationcenter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.informationcenter.FaqDTO;

public interface FaqMapper {

    List<FaqDTO> selectList(
            @Param("categoryId") int categoryId,
            @Param("startRow") int startRow,
            @Param("endRow") int endRow
    );

    int getTotalCount(@Param("categoryId") int categoryId);

    FaqDTO selectOne(@Param("faqId") int faqId);
}
