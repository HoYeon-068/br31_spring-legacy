package com.br.app.domain.informationcenter;

import java.util.Date;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InquiryDTO {

    private Long inquiryID;     // INQUIRY_ID
    private String counselType; // COUNSEL_TYPE
    private String detailType;  // DETAIL_TYPE
    private String title;       // TITLE
    private Date occurDate;     // OCCUR_DATE
    private String content;     // CONTENT (CLOB)

    private String name;        // NAME
    private String phone;       // PHONE
    private String email;       // EMAIL
    private String postPw;      // POST_PW

    private Date regDate;       // REG_DATE
    private String userID;      // USER_ID
    private Long storeID;       // STORE_ID


    private String occurDateOnly; // yyyy-MM-dd
    private Integer occurHour;    // 0~23
    private Integer occurMin;     // 0~59
}
