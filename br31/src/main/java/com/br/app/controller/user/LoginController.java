package com.br.app.controller.user;

import java.util.UUID;

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
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private UserMapper userMapper;

	@Autowired
	private UserService userService;
	
	@GetMapping("/login.do")
	   public String login(Model model) throws Exception{
		  model.addAttribute("bodyId", "login");
	      model.addAttribute("bodyClass", "login");
	      return "login.login";
	   } 
	
	@GetMapping("/findId.do")
    public String findIdPage(Model model) {
		model.addAttribute("bodyId", "findId");
	    model.addAttribute("bodyClass", "findId");
        return "login.findId"; 
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
            return "login.findIdResult";
        }

        model.addAttribute("activeTab", "email");
        model.addAttribute("eMessage", "일치하는 회원 정보가 없습니다.");
        return "login.findId";
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
            return "login.findIdResult";
        }

        model.addAttribute("activeTab", "phone");
        model.addAttribute("pMessage", "일치하는 회원 정보가 없습니다.");
        return "login.findId";
    }
	
	@GetMapping("/pwdReset.do")
	public String pwdReset(Model model) {
		model.addAttribute("bodyId", "pwdReset");
	    model.addAttribute("bodyClass", "pwdReset");
        return "login.pwdReset"; 
	}
	
	@PostMapping("/pwdResetRequest.do")
	public String pwdResetRequest(
			@RequestParam String userId,
            @RequestParam String phoneNo,
            @RequestParam String name,
            Model model
			) throws Exception {

		// 전화번호 - 제거
		 phoneNo = phoneNo == null ? "" : phoneNo.replaceAll("-", "").trim();
		
		// 임시비밀번호 생성
        String tempPwd = UUID.randomUUID().toString().replace("-", "").substring(0, 10);

        int result = userService.resetPasswordByUserIdAndPhoneAndName(userId, tempPwd, name, phoneNo);

        if (result == 1) {
            // 실제 메일 전송 대신 
            System.out.println("[임시비밀번호] " + userId + " => " + tempPwd);

            model.addAttribute("name", name);
            model.addAttribute("tempPwd", tempPwd);
            return "login.pwdChangeResult";
        }
        System.out.println("result=" + result);

        model.addAttribute("message", "비밀번호 재발급 실패(아이디/휴대폰번호/이름 확인해 주세요)");
        return "login.pwdReset";
	}
		
}
