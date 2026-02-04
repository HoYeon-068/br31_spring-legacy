package com.br.app.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.user.UserDTO;
import com.br.app.mapper.user.UserMapper;
import com.br.app.service.user.UserService;

@Controller
@RequestMapping("/login/*")
public class LoginController {
	
	@Autowired
	private UserMapper userMapper;

	@Autowired
	private UserService userService;
	
	@GetMapping("/login.do")
	   public String login() throws Exception{
	      return "/login/login";
	   } 
	
	@GetMapping("/findId.do")
    public String findIdPage() {
        return "login/findId"; 
    }
	
	@PostMapping("/findIdByEmail.do")
    public String findIdByEmail(
            @RequestParam String name,
            @RequestParam String email,
            Model model
    ) throws Exception {

        String userId = userService.findUserIdByEmail(name, email);

        if (userId != null) {
            UserDTO user = userService.getUserById(userId);
            model.addAttribute("name", user.getName());
            model.addAttribute("foundUserId", userId);
            return "login/findIdResult";
        }

        model.addAttribute("activeTab", "email");
        model.addAttribute("eMessage", "일치하는 회원 정보가 없습니다.");
        return "login/findId";
    }
	
	@PostMapping("/findIdByPhone.do")
    public String findIdByPhone(
            @RequestParam String name,
            @RequestParam(name="phoneNo") String phoneNo,
            Model model
    ) throws Exception {
		
		phoneNo = phoneNo.replaceAll("-", "").trim();

        String userId = userService.findUserIdByPhone(name, phoneNo);

        if (userId != null) {
            UserDTO user = userService.getUserById(userId);
            model.addAttribute("name", user.getName());
            model.addAttribute("foundUserId", userId);
            return "login/findIdResult";
        }

        model.addAttribute("activeTab", "phone");
        model.addAttribute("pMessage", "일치하는 회원 정보가 없습니다.");
        return "login/findId";
    }
	
}
