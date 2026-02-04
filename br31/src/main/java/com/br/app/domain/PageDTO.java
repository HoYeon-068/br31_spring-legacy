package com.br.app.domain;

import lombok.Getter;

@Getter
public class PageDTO {
  private int startPage;
  private int endPage;
  private boolean prev;
  private boolean next;

  private Criteria criteria;
  private int total;

  private int pageCount = 10; 

  public PageDTO(Criteria criteria, int total) {
    this.criteria = criteria;
    this.total = total;

    this.endPage = (int) (Math.ceil(criteria.getPageNum() / (double) pageCount)) * pageCount;
    this.startPage = this.endPage - pageCount + 1;

    int realEnd = (int) Math.ceil(total / (double) criteria.getAmount());
    if (realEnd < this.endPage) this.endPage = realEnd;

    this.prev = this.startPage > 1;
    this.next = this.endPage < realEnd;
  }

  public int getStart() { return startPage; }
  public int getEnd() { return endPage; }
  public int getCurrentPage() { return criteria.getPageNum(); }
}