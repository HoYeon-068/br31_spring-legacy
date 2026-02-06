package com.br.app.mapper.informationcenter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.informationcenter.NoticeDTO;

public interface NoticeMapper {

    
    List<NoticeDTO> selectList(@Param("startRow") int startRow,
                              @Param("endRow") int endRow);

 
    int getTotalCount();

  
    NoticeDTO selectOne(@Param("noticeID") int noticeID);
}
