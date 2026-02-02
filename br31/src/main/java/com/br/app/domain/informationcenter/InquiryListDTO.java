package com.br.app.domain.informationcenter;

import java.util.Date;

public class InquiryListDTO {

    private Long inquiryId;     // INQUIRY_ID
    private Date regDate;       // REG_DATE (접수일)
    private Date occurDate;     // OCCUR_DATE (발생일시)

    private String counselType; // COUNSEL_TYPE
    private String detailType;  // DETAIL_TYPE
    private String title;       // TITLE

    private String answer;      // INQUIRY_ANSWER.ANSWER (null이면 접수중)

    public Long getInquiryId() { return inquiryId; }
    public void setInquiryId(Long inquiryId) { this.inquiryId = inquiryId; }

    public Date getRegDate() { return regDate; }
    public void setRegDate(Date regDate) { this.regDate = regDate; }

    public Date getOccurDate() { return occurDate; }
    public void setOccurDate(Date occurDate) { this.occurDate = occurDate; }

    public String getCounselType() { return counselType; }
    public void setCounselType(String counselType) { this.counselType = counselType; }

    public String getDetailType() { return detailType; }
    public void setDetailType(String detailType) { this.detailType = detailType; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAnswer() { return answer; }
    public void setAnswer(String answer) { this.answer = answer; }
}
