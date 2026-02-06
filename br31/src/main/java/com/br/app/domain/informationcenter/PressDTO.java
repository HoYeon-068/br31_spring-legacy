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
public class PressDTO {

    private int prID;
    private String prNO;

    private String title;
    private String content;
    private Date regDate;

    // 목록/상세에서 TO_CHAR로 채울 값(선택)
    private String regDateText;
}
