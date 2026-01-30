package com.br.app.controller.event;

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
@RequestMapping("/event/*")
public class EventController {

	@Autowired
	EventMapper eventMapper;
	
	@GetMapping("/list")
	public String list(@RequestParam(value = "category", required = false, defaultValue = "ALL") String category, Model model) {
		List<EventDTO> list;

	    if ("ALL".equalsIgnoreCase(category)) {
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
	
}
