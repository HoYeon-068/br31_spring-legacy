package com.br.app.domain.informationcenter;

import java.util.Date;

public class PressDTO {

    private int prId;
    private String prNo;
    private String title;
    private String content;
    private Date regDate;
    private String regDateText;

    public int getPrId() { return prId; }
    public void setPrId(int prId) { this.prId = prId; }

    public String getPrNo() { return prNo; }
    public void setPrNo(String prNo) { this.prNo = prNo; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }

    public Date getRegDate() { return regDate; }
    public void setRegDate(Date regDate) { this.regDate = regDate; }
    
    public String getRegDateText() {
        return regDateText;
    }
    
    public void setRegDateText(String regDateText) {
        this.regDateText = regDateText;
    }
}

