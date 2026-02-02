package com.br.app.domain.informationcenter;

import java.util.Date;

public class InquiryAnswerDTO {

    private Long inquiryAnswerId; // INQUIRY_ANSWER_ID
    private Long inquiryId;       // INQUIRY_ID (FK)
    private String answer;        // ANSWER (CLOB)
    private Date regDate;         // REG_DATE

    public Long getInquiryAnswerId() {
        return inquiryAnswerId;
    }
    public void setInquiryAnswerId(Long inquiryAnswerId) {
        this.inquiryAnswerId = inquiryAnswerId;
    }

    public Long getInquiryId() {
        return inquiryId;
    }
    public void setInquiryId(Long inquiryId) {
        this.inquiryId = inquiryId;
    }

    public String getAnswer() {
        return answer;
    }
    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Date getRegDate() {
        return regDate;
    }
    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }
}
