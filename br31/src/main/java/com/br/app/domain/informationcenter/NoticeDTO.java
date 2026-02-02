package com.br.app.domain.informationcenter;

import java.util.Date;

public class NoticeDTO {

    private int noticeId;       // NOTICE_ID
    private String noticeNo;    // NOTICE_NO (TOP 가능)
    private String title;       // TITLE
    private String content;     // CONTENT (CLOB -> String)
    private Date regDate;       // REG_DATE

    public int getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(int noticeId) {
        this.noticeId = noticeId;
    }

    public String getNoticeNo() {
        return noticeNo;
    }

    public void setNoticeNo(String noticeNo) {
        this.noticeNo = noticeNo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }
}
