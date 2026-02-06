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
public class FairTradeDTO {

    private int noticeID;     // NOTICE_ID
    private String noticeNO;  // NOTICE_NO
    private String title;
    private String content;
    private Date regDate;     // REG_DATE
}
