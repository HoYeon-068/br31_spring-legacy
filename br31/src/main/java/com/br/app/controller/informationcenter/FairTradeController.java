/*
package com.br.app.controller.informationcenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.informationcenter.FairTradeDTO;
import com.br.app.mapper.informationcenter.FairTradeMapper;

@Controller
@RequestMapping("/information-center/fairtrade")
public class FairTradeController {

    private final FairTradeMapper fairTradeMapper;

    @Autowired
    public FairTradeController(FairTradeMapper fairTradeMapper) {
        this.fairTradeMapper = fairTradeMapper;
    }

    @GetMapping("/list.do")
    public String fairTradeList(
            @RequestParam(value = "page", defaultValue = "1") int currentPage,
            @RequestParam(value = "keyword", defaultValue = "") String keyword,
            Model model
    ) {
        final int pageSize = 10;

        int startRow = (currentPage - 1) * pageSize + 1;
        int endRow = currentPage * pageSize;

        List<FairTradeDTO> list = fairTradeMapper.selectList(startRow, endRow);
        int totalCount = fairTradeMapper.getTotalCount();
        int totalPage = (int) Math.ceil((double) totalCount / pageSize);

        model.addAttribute("list", list);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("keyword", keyword);

        return "information-center/fairtrade/list";
    }

    @GetMapping("/view.do")
    public String fairTradeView(@RequestParam("id") int id, Model model) {
        FairTradeDTO dto = fairTradeMapper.selectOne(id);

        // ✅ 3번 게시글은 외부링크 이동 (noticeNo = "3")
        if (dto != null && "3".equals(dto.getNoticeNo())) {
            return "redirect:https://www.baskinrobbins.co.kr/ebook/bk250826/#page=1";
        }

        model.addAttribute("dto", dto);
        return "information-center/fairtrade/view";
    }
}
*/
