package com.br.app.controller.recipe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.Criteria;
import com.br.app.domain.PageDTO;
import com.br.app.domain.recipe.RecipeListDTO;
import com.br.app.domain.recipe.RecipeViewDTO;
import com.br.app.mapper.recipe.RecipeMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("play/recipe/*")
public class RecipeController {

    @Autowired
    private RecipeMapper recipeMapper;

    @GetMapping("/list")
    public String list(
            @RequestParam(value = "category", required = false, defaultValue = "ALL") String category,
            @RequestParam(value = "page", required = false, defaultValue = "1") int page,
            Model model
    ) {
        Integer categoryId = null;
        if (category != null && !"ALL".equalsIgnoreCase(category)) {
            try {
                categoryId = Integer.parseInt(category);
            } catch (NumberFormatException e) {
                category = "ALL";
                categoryId = null;
            }
        } else {
            category = "ALL";
        }

        Criteria criteria = new Criteria();
        criteria.setPageNum(page);
        criteria.setAmount(12); 

        int total = recipeMapper.count(categoryId);
        List<RecipeListDTO> list = recipeMapper.selectList(categoryId, criteria.getOffset(), criteria.getAmount());

        PageDTO pageVO = new PageDTO(criteria, total);

        model.addAttribute("list", list);
        model.addAttribute("category", category);
        model.addAttribute("pageVO", pageVO);

        return "play.recipe.list";
    }
    
    @GetMapping("/view")
    public String view(@RequestParam("recipeId") int recipeId, Model model) {
      RecipeViewDTO dto = recipeMapper.view(recipeId);
      model.addAttribute("dto", dto);
      return "play.recipe.view";
    }

}
