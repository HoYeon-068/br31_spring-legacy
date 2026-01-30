package com.br.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.br.app.mapper.TimeMapper;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private TimeMapper timeMapper;
	 
	@GetMapping(value = "/index.do")
	public String home(Locale locale, Model model) {
		System.out.println(timeMapper.getTime());
		return "index";  // 타일즈 뷰명
	}
	
}
