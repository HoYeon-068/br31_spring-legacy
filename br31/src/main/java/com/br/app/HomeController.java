package com.br.app;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@GetMapping(value = "/index.do")
	public String home(Locale locale, Model model) {
		
		model.addAttribute("bodyId", "baskinrobbins-main");
	    model.addAttribute("bodyClass", "baskinrobbins-main");
		return "index";  // 타일즈 뷰명
	}
	
}
