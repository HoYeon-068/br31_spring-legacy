
/*package com.br.app.controller.informationcenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.informationcenter.PressDTO;
import com.br.app.mapper.informationcenter.PressMapper;

@Controller
@RequestMapping("/information-center/press")
public class PressController {

    private final PressMapper pressMapper;
    

    @Autowired
    public PressController(PressMapper pressMapper) {
        this.pressMapper = pressMapper;
    }

    @GetMapping("/list.do")
    public String pressList(
            @RequestParam(value = "page", defaultValue = "1") int currentPage,
            @RequestParam(value = "keyword", defaultValue = "") String keyword,
            Model model
    ) {
        final int pageSize = 10;
        final int blockSize = 5;

        int startRow = (currentPage - 1) * pageSize + 1;
        int endRow = currentPage * pageSize;

        List<PressDTO> list = pressMapper.selectList(startRow, endRow);
        int totalCount = pressMapper.getTotalCount();
        int totalPage = (int) Math.ceil((double) totalCount / pageSize);

        // ===== 블록 계산 =====
        int startPage = ((currentPage - 1) / blockSize) * blockSize + 1;
        int endPage = Math.min(startPage + blockSize - 1, totalPage);

        // 블록 이동(◀ ▶): 1~5면 prev 없음, next는 6 / 6~10이면 prev는 1, next는 11 ...
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

        return "information-center/press/list";
    }


    @GetMapping("/view.do")
    public String pressView(
            @RequestParam("id") int id,
            @RequestParam(value="page", defaultValue="1") int page,
            @RequestParam(value="keyword", defaultValue="") String keyword,
            Model model
    ) {
        PressDTO dto = pressMapper.selectOne(id);

        // (권장) dto.regDateText 세팅도 여기서 수행
        // dto.setRegDateText(...);

        model.addAttribute("dto", dto);
        model.addAttribute("page", page);
        model.addAttribute("keyword", keyword);

        return "information-center/press/view";
    }


} */
