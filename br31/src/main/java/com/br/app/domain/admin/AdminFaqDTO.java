package com.br.app.domain.admin;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;



@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AdminFaqDTO {

    private Long faqId;
    private String question;
    private String answer;
    private Date regDate;
    private Long faqCategoryId;
}
