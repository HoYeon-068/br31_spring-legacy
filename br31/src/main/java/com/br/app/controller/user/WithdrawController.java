package com.br.app.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/withdraw/*")
public class WithdrawController {
    @GetMapping("/withdrawResult.do")
    public String withdrawResult(Model model) {
    	model.addAttribute("bodyId", "baskinrobbins-withdrawResult");
    	model.addAttribute("bodyClass", "baskinrobbins-withdrawResult");
        return "withdraw.withdrawResult";
    }
    
}
