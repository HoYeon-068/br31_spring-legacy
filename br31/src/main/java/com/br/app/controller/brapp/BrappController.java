package com.br.app.controller.brapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.menu.FomViewDTO;
import com.br.app.domain.menu.IceNutritionDTO;
import com.br.app.domain.menu.IngredientDTO;
import com.br.app.domain.menu.MenuListDTO;
import com.br.app.domain.menu.MenuViewDTO;
import com.br.app.domain.menu.MonthlyFlavorDTO;
import com.br.app.domain.menu.ProductDTO;
import com.br.app.mapper.menu.IceNutritionMapper;
import com.br.app.mapper.menu.MonthlyFlavorMapper;
import com.br.app.mapper.menu.ProductMapper;

@Controller
@RequestMapping("/brapp/*")
public class BrappController {
	
	
	@GetMapping("/brapp.do")
	public String brappBrapp() throws Exception {
		
		return "/brapp/brapp";
	}
}
