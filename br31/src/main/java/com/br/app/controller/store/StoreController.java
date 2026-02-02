package com.br.app.controller.store;

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
@RequestMapping("/store/*")
public class StoreController {
	
	@Autowired
	private ProductMapper productDao;
	
	@GetMapping("/catering.do")
	public String storeCatering(Model model) throws Exception {
		
			model.addAttribute("activeMenu", "catering");
			model.addAttribute("bodyId", "baskinrobbins-store-catering");
			model.addAttribute("bodyClass", "baskinrobbins-store-catering");
		return "store.catering";
	}
	
	@GetMapping("/catering-order.do")
	public String storeCateringOrder(Model model) throws Exception {
		
		model.addAttribute("bodyId", "baskinrobbins-store-catering-order-order");
		model.addAttribute("bodyClass", "baskinrobbins-store-catering-order-order");
		
		return "store.catering-order";
	}
	
	@GetMapping("/delivary.do")
	public String storeDelivary(Model model) throws Exception {
		
			model.addAttribute("activeMenu", "delivary");
			
			model.addAttribute("bodyId", "baskinrobbins-store-delivary");
			model.addAttribute("bodyClass", "baskinrobbins-store-delivary");
			
		return "store.delivary";
	}
	
	@GetMapping("/flavor.do")
	public String storeFlavor(Model model) throws Exception {
		
			model.addAttribute("activeMenu", "flavor");
			
			model.addAttribute("bodyId", "baskinrobbins-store-flavor");
			model.addAttribute("bodyClass", "baskinrobbins-store-flavor");
		
		return "store.flavor";
	}
	
	@GetMapping("/map.do")
	public String storeMap(Model model) throws Exception {
		
			model.addAttribute("activeMenu", "map");
			
			model.addAttribute("bodyId", "baskinrobbins-store-map");
			model.addAttribute("bodyClass", "baskinrobbins-store-map");
			
		return "store.map";
	}
	
	@GetMapping("/workshop.do")
	public String storeWorkshop(Model model) throws Exception {
		
			model.addAttribute("activeMenu", "workshop");
			
			model.addAttribute("bodyId", "baskinrobbins-store-workshop");
			model.addAttribute("bodyClass", "baskinrobbins-store-workshop");
		
		return "store.workshop";
	}
}
