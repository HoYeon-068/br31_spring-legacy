package com.br.app.domain.informationcenter;

import java.util.Date;

public class InquiryViewDTO {

    private Long inquiryId;
    private String counselType;
    private String detailType;
    private String title;

    private Date occurDate;   // 발생일시
    private String content;   // CLOB이라도 조회는 String으로 OK
    private Date regDate;     // 접수일

    private Long storeId;     // inquiry에 저장된 store_id
    private String storeName; // store join 결과

    private String answer;    // 답변내용(CLOB)
    private Date answerDate;  // 답변 등록일

    public Long getInquiryId() { return inquiryId; }
    public void setInquiryId(Long inquiryId) { this.inquiryId = inquiryId; }

    public String getCounselType() { return counselType; }
    public void setCounselType(String counselType) { this.counselType = counselType; }

    public String getDetailType() { return detailType; }
    public void setDetailType(String detailType) { this.detailType = detailType; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public Date getOccurDate() { return occurDate; }
    public void setOccurDate(Date occurDate) { this.occurDate = occurDate; }

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }

    public Date getRegDate() { return regDate; }
    public void setRegDate(Date regDate) { this.regDate = regDate; }

    public Long getStoreId() { return storeId; }
    public void setStoreId(Long storeId) { this.storeId = storeId; }

    public String getStoreName() { return storeName; }
    public void setStoreName(String storeName) { this.storeName = storeName; }

    public String getAnswer() { return answer; }
    public void setAnswer(String answer) { this.answer = answer; }

    public Date getAnswerDate() { return answerDate; }
    public void setAnswerDate(Date answerDate) { this.answerDate = answerDate; }
}
