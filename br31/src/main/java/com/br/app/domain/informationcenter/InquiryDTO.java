package com.br.app.domain.informationcenter;

import java.util.Date;

public class InquiryDTO {

    private Long inquiryId;       // INQUIRY_ID
    private String counselType;   // COUNSEL_TYPE
    private String detailType;    // DETAIL_TYPE
    private String title;         // TITLE
    private Date occurDate;       // OCCUR_DATE (Oracle DATE지만 시간까지 저장 가능)
    private String content;       // CONTENT (CLOB)

    private String name;          // NAME
    private String phone;         // PHONE
    private String email;         // EMAIL
    private String postPw;        // POST_PW

    private Date regDate;         // REG_DATE
    private String userId;        // USER_ID
    private Long storeId;         // STORE_ID

    public Long getInquiryId() {
        return inquiryId;
    }
    public void setInquiryId(Long inquiryId) {
        this.inquiryId = inquiryId;
    }

    public String getCounselType() {
        return counselType;
    }
    public void setCounselType(String counselType) {
        this.counselType = counselType;
    }

    public String getDetailType() {
        return detailType;
    }
    public void setDetailType(String detailType) {
        this.detailType = detailType;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public Date getOccurDate() {
        return occurDate;
    }
    public void setOccurDate(Date occurDate) {
        this.occurDate = occurDate;
    }

    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPostPw() {
        return postPw;
    }
    public void setPostPw(String postPw) {
        this.postPw = postPw;
    }

    public Date getRegDate() {
        return regDate;
    }
    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Long getStoreId() {
        return storeId;
    }
    public void setStoreId(Long storeId) {
        this.storeId = storeId;
    }
}
