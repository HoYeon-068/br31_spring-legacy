package com.br.app.mapper.informationcenter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.informationcenter.FairTradeDTO;

public interface FairTradeMapper {

    List<FairTradeDTO> selectList(@Param("startRow") int startRow,
                                  @Param("endRow") int endRow);

    int getTotalCount();

    FairTradeDTO selectOne(@Param("noticeId") int noticeId);
}
