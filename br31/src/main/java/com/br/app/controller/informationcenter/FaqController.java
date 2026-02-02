/*
package com.br.app.controller.informationcenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.informationcenter.FaqDTO;
import com.br.app.mapper.informationcenter.FaqMapper;

@Controller
@RequestMapping("/information-center/faq")
public class FaqController {

    private final FaqMapper faqMapper;

    @Autowired
    public FaqController(FaqMapper faqMapper) {
        this.faqMapper = faqMapper;
    }

    @GetMapping("/list.do")
    public String faqList(
            @RequestParam(value = "page", defaultValue = "1") int currentPage,
            @RequestParam(value = "category", defaultValue = "0") int categoryId,
            Model model
    ) {
        final int pageSize = 10;
        final int blockSize = 5;

        int startRow = (currentPage - 1) * pageSize + 1;
        int endRow = currentPage * pageSize;

        List<FaqDTO> list = faqMapper.selectList(categoryId, startRow, endRow);
        int totalCount = faqMapper.getTotalCount(categoryId);
        int totalPage = (int) Math.ceil((double) totalCount / pageSize);

        int startPage = ((currentPage - 1) / blockSize) * blockSize + 1;
        int endPage = Math.min(startPage + blockSize - 1, totalPage);

        Integer prevBlockPage = (startPage > 1) ? startPage - blockSize : null;
        Integer nextBlockPage = (startPage + blockSize <= totalPage) ? startPage + blockSize : null;

        model.addAttribute("list", list);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        model.addAttribute("categoryId", categoryId);
        model.addAttribute("prevBlockPage", prevBlockPage);
        model.addAttribute("nextBlockPage", nextBlockPage);

        return "information-center/faq/list";
    }
}
*/
