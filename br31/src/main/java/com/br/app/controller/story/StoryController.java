package com.br.app.controller.story;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.story.CampaignDTO;
import com.br.app.domain.story.CampaignInfoDTO;
import com.br.app.domain.story.HistoryFlavorDTO;
import com.br.app.domain.story.StoryDTO;
import com.br.app.mapper.story.StoryMapper;


@Controller
@RequestMapping("/story/*")
public class StoryController {
	
	@Autowired
	private StoryMapper storyMapper;
	
	
	
	@GetMapping("/story.do")
	public String storyList(Model model)throws Exception {
		List<StoryDTO> list = storyMapper.storyList();
		System.out.println(">>>🍍🍍🍍🍍🍍🍍🍍🍍🍍 storyList called, size=" + list.size());
		model.addAttribute("storyList", list );
		model.addAttribute("bodyId", "baskinrobbins-story-story");
	    model.addAttribute("bodyClass", "baskinrobbins-story-story");
		return"story.story";
	}
	
	@GetMapping("/history.do")
	public String history(
							@RequestParam(value = "releaseYear", required = false) Integer releaseYear,
							@RequestParam(value = "mkt", required = false) String mkt,
							Model model
							) {
		model.addAttribute("bodyId", "baskinrobbins-story-history");
	    model.addAttribute("bodyClass", "baskinrobbins-story-history");
		if (mkt != null && !mkt.isBlank()) {
			int themeId = convertMktToThemeId(mkt);
			List<HistoryFlavorDTO> list = storyMapper.listByTheme(themeId);
			model.addAttribute("list", list);
			model.addAttribute("mode", "theme");
			model.addAttribute("mkt", mkt);
			
		} else {
			int year = (releaseYear == null) ? 2025 : releaseYear;
			List<HistoryFlavorDTO> list = storyMapper.listByYear(year);
			model.addAttribute("list", list);
			model.addAttribute("mode", "year");
			model.addAttribute("releaseYear", year);
		}
		
		return "story.history";
	}

	private int convertMktToThemeId(String mkt) {
		switch (mkt) {
        case "A": return 1;
        case "B": return 2;
        case "D": return 3;
        case "H": return 4;
        default:  return 1;
		}
	}
	
	@GetMapping("/be-better.do")
	public String beBetter(Model model) {
		List<CampaignDTO> list = storyMapper.campaignList();
		List<CampaignInfoDTO> cInfoList = storyMapper.campaignInfoAll();
		model.addAttribute("campaignList", list );
		model.addAttribute("campaignInfoAll", cInfoList );
		model.addAttribute("bodyId", "baskinrobbins-story-be-better");
	    model.addAttribute("bodyClass", "baskinrobbins-story-be-better");
		return"story.be-better";
	}
	
	
		
}
