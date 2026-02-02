/*
package com.br.app.controller.informationcenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.informationcenter.NoticeDTO;
import com.br.app.mapper.informationcenter.NoticeMapper;

@Controller
@RequestMapping("/information-center/notice")
public class NoticeController {

    private final NoticeMapper noticeMapper;

    @Autowired
    public NoticeController(NoticeMapper noticeMapper) {
        this.noticeMapper = noticeMapper;
    }

    @GetMapping("/list.do")
    public String noticeList(
            @RequestParam(value="page", defaultValue="1") int currentPage,
            @RequestParam(value="keyword", defaultValue="") String keyword,
            Model model
    ) {
        final int pageSize = 10;
        final int blockSize = 5;

        int startRow = (currentPage - 1) * pageSize + 1;
        int endRow = currentPage * pageSize;

        // TODO: keyword 검색이 mapper에 없다면 일단 유지용으로만 들고감
        List<NoticeDTO> list = noticeMapper.selectList(startRow, endRow);
        int totalCount = noticeMapper.getTotalCount();
        int totalPage = (int)Math.ceil((double)totalCount / pageSize);

        int startPage = ((currentPage - 1) / blockSize) * blockSize + 1;
        int endPage = Math.min(startPage + blockSize - 1, totalPage);

        Integer prevBlockPage = (startPage > 1) ? (startPage - blockSize) : null;
        Integer nextBlockPage = (startPage + blockSize <= totalPage) ? (startPage + blockSize) : null;

        model.addAttribute("list", list);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalPage", totalPage);

        model.addAttribute("blockSize", blockSize);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        model.addAttribute("prevBlockPage", prevBlockPage);
        model.addAttribute("nextBlockPage", nextBlockPage);

        model.addAttribute("keyword", keyword);

        return "information-center/notice/list";
    }

    @GetMapping("/view.do")
    public String noticeView(
            @RequestParam("id") int id,
            @RequestParam(value="page", defaultValue="1") int page,
            @RequestParam(value="keyword", defaultValue="") String keyword,
            Model model
    ) {
        NoticeDTO dto = noticeMapper.selectOne(id);

        model.addAttribute("dto", dto);
        model.addAttribute("page", page);
        model.addAttribute("keyword", keyword);

        return "information-center/notice/view";
    }
}
*/

