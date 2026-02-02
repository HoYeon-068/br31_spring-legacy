package com.br.app.mapper.informationcenter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.informationcenter.FairTradeDTO;

public interface FairTradeMapper {

    // 목록(ROWNUM 페이징)
    List<FairTradeDTO> selectList(@Param("startRow") int startRow,
                                  @Param("endRow") int endRow);

    // 전체 건수
    int getTotalCount();

    // 상세
    FairTradeDTO selectOne(@Param("noticeId") int noticeId);
}
