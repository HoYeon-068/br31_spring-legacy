package com.br.app.service.search;

import java.util.List;

import com.br.app.domain.search.BoardSearchDTO;

public interface BoardSearchService {

    SearchResult searchAll(String keyword, int currentPage, int pageSize, String contextPath);

    class SearchResult {
        private final List<BoardSearchDTO> list;
        private final int totalCount;
        private final int totalPage;

        public SearchResult(List<BoardSearchDTO> list, int totalCount, int totalPage) {
            this.list = list;
            this.totalCount = totalCount;
            this.totalPage = totalPage;
        }

        public List<BoardSearchDTO> getList() {
            return list;
        }

        public int getTotalCount() {
            return totalCount;
        }

        public int getTotalPage() {
            return totalPage;
        }
    }
}
