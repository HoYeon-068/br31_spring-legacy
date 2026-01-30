package com.br.app.controller.story;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.app.domain.story.StoryDTO;
import com.br.app.mapper.story.StoryMapper;


@Controller
@RequestMapping("/story/*")
public class StoryController {
	
	@Autowired
	private StoryMapper storyDao;
	
	@GetMapping("/story.do")
	public String storyList(Model model)throws Exception {
		List<StoryDTO> list = storyDao.storyList();
		System.out.println(">>>🍍🍍🍍🍍🍍🍍🍍🍍🍍 storyList called, size=" + list.size());
		model.addAttribute("storyList", list );
		return"/story/story";
	}
		
}
