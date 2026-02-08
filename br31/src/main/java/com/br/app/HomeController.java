package com.br.app;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.br.app.domain.event.EventDTO;
import com.br.app.mapper.event.EventMapper;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private EventMapper eventDao;


	@GetMapping(value = "/index.do")
	public String home(Locale locale, Model model) {



		List<EventDTO> plist = null;
		List<EventDTO> blist = null;



		plist = eventDao.select("1"); // 프로모션
		blist = eventDao.select("2"); // 제휴혜택



		model.addAttribute("blist", blist);
		model.addAttribute("plist", plist);

		model.addAttribute("bodyId", "baskinrobbins-main");
		model.addAttribute("bodyClass", "baskinrobbins-main");
		return "index";  // 타일즈 뷰명
	}

}
