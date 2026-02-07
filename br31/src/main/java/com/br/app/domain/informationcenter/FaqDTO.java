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
public class FaqDTO {

    private int faqID;
    private String question;
    private String answer;
    private Date regDate;

    private int faqCategoryID;
    private String categoryName; // join 결과용
}
