package com.br.app.domain.search;

public class BoardSearchDTO {
    private String type;     // "NOTICE" or "PRESS"
    private int id;
    private String title;
    private String regDate;  // 화면 출력용(문자열로 받는 게 편함)
    private String viewUrl;  // 공지/보도 상세로 분기 링크

    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getRegDate() {
        return regDate;
    }
    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }
    public String getViewUrl() {
        return viewUrl;
    }
    public void setViewUrl(String viewUrl) {
        this.viewUrl = viewUrl;
    }
}
