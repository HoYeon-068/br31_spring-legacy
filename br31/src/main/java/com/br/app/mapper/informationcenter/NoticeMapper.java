package com.br.app.mapper.informationcenter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.informationcenter.NoticeDTO;

public interface NoticeMapper {

    // 목록(ROWNUM 페이징)
    List<NoticeDTO> selectList(@Param("startRow") int startRow,
                              @Param("endRow") int endRow);

    // 전체 건수
    int getTotalCount();

    // 상세
    NoticeDTO selectOne(@Param("noticeId") int noticeId);
}
