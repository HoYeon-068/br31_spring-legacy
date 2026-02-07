package com.br.app.controller.event;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.event.EventDTO;
import com.br.app.mapper.event.EventMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("play/event/*")
public class EventController {

	@Autowired
	EventMapper eventMapper;
	
	@GetMapping("/list")
	public String list(@RequestParam(value = "category", required = false, defaultValue = "ALL") String category, Model model) {
		List<EventDTO> list;

	    if ("ALL".equalsIgnoreCase(category) || category == null) {
	        list = eventMapper.selectAll();
	    } else {
	        list = eventMapper.selectCategory(category);
	    }

	    // D-Day 계산 (컨트롤러에 넣으면 컨트롤러가 점점 뚱뚱해짐)
	    long now = System.currentTimeMillis();
	    for (EventDTO e : list) {
	        if (e.getEndDate() != null) {
	            long diff = e.getEndDate().getTime() - now;
	            int dday = (int) Math.ceil(diff / (1000.0 * 60 * 60 * 24));
	            e.setDday(dday);
	        }
	    }

	    model.addAttribute("list", list);
	    return "play/event/list";
	}
	
	@GetMapping("/view")
	public String view(@RequestParam("seq") int seq, Model model) {

	    // 상세
	    EventDTO dto = eventMapper.view(seq);
	    
	    List<EventDTO> ongoingList = eventMapper.selectOngoing(seq);
	    
	    // D-Day 계산 (컨트롤러에 넣으면 컨트롤러가 점점 뚱뚱해짐)
	    long now = System.currentTimeMillis();
	    for (EventDTO e : ongoingList) {
	        if (e.getEndDate() != null) {
	            long diff = e.getEndDate().getTime() - now;
	            int dday = (int) Math.ceil(diff / (1000.0 * 60 * 60 * 24));
	            e.setDday(dday);
	        }
	    }

	    // 매장 목록
	    List<String> storeList = new ArrayList<>();
	    boolean hasStoreButton = false;
	    
	    if (dto != null) {
            String scope = dto.getStoreScope();
            if (scope != null && !"NONE".equalsIgnoreCase(scope)) {
                storeList = eventMapper.selectStoreNames(seq);
                hasStoreButton = (storeList != null && !storeList.isEmpty());
            }
        }

	    model.addAttribute("dto", dto);
        model.addAttribute("storeList", storeList);
        model.addAttribute("hasStoreButton", hasStoreButton);
        model.addAttribute("ongoingList", ongoingList);
	    
	    
	    return "play/event/view";
	}

	
}
