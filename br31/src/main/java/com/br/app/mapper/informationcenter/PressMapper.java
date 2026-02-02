package com.br.app.mapper.informationcenter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.informationcenter.PressDTO;

public interface PressMapper {

    List<PressDTO> selectList(@Param("startRow") int startRow,
                              @Param("endRow") int endRow);

    int getTotalCount();

    PressDTO selectOne(@Param("id") int id);
}
