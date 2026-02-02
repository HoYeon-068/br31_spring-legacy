package com.br.app.controller.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.search.ProductDTO;
import com.br.app.service.search.ProductSearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

    @Autowired
    private ProductSearchService productSearchService;

    // ✅ 상품검색
    // URL: /search/list.do
    // - keyword 없으면 전체조회
    // - keyword 1글자라도 있으면 LIKE 검색
    // - categoryId 있으면 카테고리 조건
    @GetMapping("/list.do")
    public String productList(
            @RequestParam(value = "keyword", defaultValue = "") String keyword,
            @RequestParam(value = "categoryId", required = false) Long categoryId,
            Model model
    ) {
        String q = (keyword == null) ? "" : keyword.trim();

        List<ProductDTO> list = productSearchService.search(q, categoryId);
        int totalCount = productSearchService.count(q, categoryId);

        model.addAttribute("list", list);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("keyword", q);
        model.addAttribute("categoryId", categoryId);

        // ✅ /WEB-INF/views/search/list.jsp
        return "search/list";
    }
}
