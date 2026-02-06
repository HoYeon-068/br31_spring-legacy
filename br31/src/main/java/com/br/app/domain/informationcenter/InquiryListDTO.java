package com.br.app.domain.informationcenter;

import java.util.Date;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InquiryListDTO {

    private Long inquiryID;      // INQUIRY_ID
    private Date regDate;        // REG_DATE
    private Date occurDate;      // OCCUR_DATE

    private String counselType;  // COUNSEL_TYPE
    private String detailType;   // DETAIL_TYPE
    private String title;        // TITLE

    private String answer;       // INQUIRY_ANSWER.ANSWER (null이면 접수중)
}
