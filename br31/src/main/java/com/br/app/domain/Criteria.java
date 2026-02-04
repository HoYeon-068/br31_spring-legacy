package com.br.app.domain;

import lombok.Getter;
import lombok.Setter;

@Getter 
@Setter
public class Criteria {
  private int pageNum;   // 현재 페이지
  private int amount;    // 페이지당 개수

  public Criteria() { this(1, 12); }
  public Criteria(int pageNum, int amount) {
    this.pageNum = pageNum;
    this.amount = amount;
  }

  public int getOffset() {
    return (pageNum - 1) * amount;
  }
}