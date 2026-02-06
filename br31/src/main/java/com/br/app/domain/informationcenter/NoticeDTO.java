package com.br.app.domain.informationcenter;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class NoticeDTO {

    // NOTICE.NOTICE_ID
    private int noticeID;

    // NOTICE.NOTICE_NO (TOP 가능)
    private String noticeNO;

    // NOTICE.TITLE
    private String title;

    // NOTICE.CONTENT (CLOB -> String)
    private String content;

    // NOTICE.REG_DATE
    private Date regDate;
}
