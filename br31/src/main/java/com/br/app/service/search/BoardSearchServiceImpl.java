package com.br.app.service.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.br.app.domain.search.BoardSearchDTO;
import com.br.app.mapper.search.BoardSearchMapper;

@Service
public class BoardSearchServiceImpl implements BoardSearchService {

    private final BoardSearchMapper boardSearchMapper;

    @Autowired
    public BoardSearchServiceImpl(BoardSearchMapper boardSearchMapper) {
        this.boardSearchMapper = boardSearchMapper;
    }

    @Override
    public SearchResult searchAll(String keyword, int currentPage, int pageSize, String contextPath) {

        int startRow = (currentPage - 1) * pageSize + 1;
        int endRow = currentPage * pageSize;

        List<BoardSearchDTO> list = boardSearchMapper.searchAll(keyword, startRow, endRow);
        int totalCount = boardSearchMapper.countAll(keyword);
        int totalPage = (int) Math.ceil((double) totalCount / pageSize);

        for (BoardSearchDTO dto : list) {
            if ("NOTICE".equals(dto.getType())) {
                dto.setViewUrl(contextPath + "/information-center/notice/view.do?id=" + dto.getId());
            } else if ("PRESS".equals(dto.getType())) {
                dto.setViewUrl(contextPath + "/information-center/press/view.do?id=" + dto.getId());
            }
        }

        return new SearchResult(list, totalCount, totalPage);
    }
}
