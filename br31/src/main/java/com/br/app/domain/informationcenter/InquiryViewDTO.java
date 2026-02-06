package com.br.app.domain.informationcenter;

import java.util.Date;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InquiryViewDTO {

    private Long inquiryID;
    private String counselType;
    private String detailType;
    private String title;

    private Date occurDate;
    private String content;
    private Date regDate;

    private Long storeID;
    private String storeName;

    private String answer;
    private Date answerDate;
}
