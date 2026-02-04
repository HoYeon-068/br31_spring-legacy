package com.br.app.controller.plaza;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.br.app.controller.plaza.form.ConsultingForm;
import com.br.app.domain.plaza.ConsultingDTO;
import com.br.app.domain.plaza.PlazaSelectDTO;
import com.br.app.domain.plaza.PlazaViewDTO;
import com.br.app.domain.plaza.PlazaWriteDTO;
import com.br.app.mapper.plaza.PlazaMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("play/plaza/*")
public class PlazaController {
	
	@Autowired
	PlazaMapper plazaMapper;
	
	@GetMapping("/list")
	public String list(@RequestParam(value = "category", required = false, defaultValue = "ALL") String category, Model model) {
		List<PlazaSelectDTO> list;
		
		if (category == null || category.equalsIgnoreCase("ALL")) {
			list = plazaMapper.select();
		} else {
			list = plazaMapper.selectCategory(category);
		}
		
		model.addAttribute("list", list);
		return "play/plaza/list";
	}
	
	@GetMapping("/view")
	public void view(@RequestParam("seq") int seq, Model model) {
		
		PlazaViewDTO dto = plazaMapper.view(seq);
		
		model.addAttribute("dto", dto);
		
	}
	
	@GetMapping("/consulting")
	public void consulting() {
		
	}
	
	@PostMapping("/consulting")
	public String insertConsulting(ConsultingForm form, RedirectAttributes rttr) {
	  ConsultingDTO dto = form.toDto();
	  int row = plazaMapper.insertConsulting(dto);

	  if (row == 1) return "redirect:/play/plaza/list.do";
	  rttr.addFlashAttribute("error", "등록 실패");
	  return "redirect:/play/plaza/consulting.do";
	}
	
	@GetMapping("/new")
	public void newice() {
		
	}
	
	@PostMapping("/new")
	// 수정필요 로그인 ++
	public String write(PlazaWriteDTO dto) {
	    plazaMapper.insertPlazaReturnId(dto);

	    int newId = dto.getPlazaId();
	    return "redirect:/play/plaza/view.do?seq=" + newId;
	}
	
	@GetMapping("/collabo")
	public void collabo() {
		
	}
	
	// 콜라보 포스트매핑 만들기
	
}
