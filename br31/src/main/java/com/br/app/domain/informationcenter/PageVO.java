package com.br.app.domain.informationcenter;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import org.springframework.beans.factory.annotation.Autowired;

import com.br.app.mapper.informationcenter.NewStoreBoardMapper;

import lombok.Getter;
import lombok.Setter;

// System.out.println("\t\t PREV    [1] 2 3 4 5 6 7 8 9 10   NEXT");
@Getter
@Setter
public class PageVO {

    private int currentPage;
    private int numberPerPage;
    private int totalNum;
    private int totalPages;
    private boolean prev;
    private boolean next;
    private int start;
    private int end;

    // totalNum, totalPages는 외부에서 계산해서 전달
    public PageVO(int currentPage, int numberPerPage, int numberOfPageBlock, int totalNum, int totalPages) {
        this.currentPage = currentPage;
        this.numberPerPage = numberPerPage;
        this.totalNum = totalNum;
        this.totalPages = totalPages;

        this.start = (currentPage - 1) / numberOfPageBlock * numberOfPageBlock + 1;
        this.end = start + numberOfPageBlock - 1;
        if (end > totalPages) end = totalPages;

        this.prev = start != 1;
        this.next = end != totalPages;
    }
}