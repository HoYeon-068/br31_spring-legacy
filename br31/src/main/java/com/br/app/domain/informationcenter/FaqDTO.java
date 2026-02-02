package com.br.app.domain.informationcenter;

import java.util.Date;

public class FaqDTO {
    private int faqId;
    private String question;
    private String answer;
    private Date regDate;

    private int faqCategoryId;
    private String categoryName; // join 결과용

    // getters/setters
    public int getFaqId() { return faqId; }
    public void setFaqId(int faqId) { this.faqId = faqId; }

    public String getQuestion() { return question; }
    public void setQuestion(String question) { this.question = question; }

    public String getAnswer() { return answer; }
    public void setAnswer(String answer) { this.answer = answer; }

    public Date getRegDate() { return regDate; }
    public void setRegDate(Date regDate) { this.regDate = regDate; }

    public int getFaqCategoryId() { return faqCategoryId; }
    public void setFaqCategoryId(int faqCategoryId) { this.faqCategoryId = faqCategoryId; }

    public String getCategoryName() { return categoryName; }
    public void setCategoryName(String categoryName) { this.categoryName = categoryName; }
}
