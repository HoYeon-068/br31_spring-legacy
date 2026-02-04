package com.br.app.controller.user;

import java.beans.PropertyEditorSupport;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.br.app.domain.user.UserDTO;
import com.br.app.mapper.user.UserMapper;
import com.br.app.service.user.UserService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/join/*")
public class JoinController {

	@Autowired
	private UserMapper userMapper;
	
	// 1. 회원가입
	@GetMapping("/join.do")
	public String join() throws Exception{
		return "/join/join";
	}
	
	@GetMapping("/joinComplete.do")
	public String joinComplete() {
	    return "join/joinComplete"; 
	}
	
	// 1-1. 가입
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(String.class, "habit", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				setValue(text);
			}
			
			@Override
			public void setValue(Object value) {
				if (value instanceof String []) {
					String combinedHabit = String.join("***", (String [])value);
					super.setValue(combinedHabit);
				} else {
					super.setValue(value);
				}
			}
		});
	}
	
	
	@Autowired
	private UserService userService;
	
	
	@PostMapping("/join.do") 
	public String join(
							UserDTO userDTO
							, @RequestParam("birthY") String birthY
							, @RequestParam("birthM") String birthM
							, @RequestParam("birthD") String birthD
							,@RequestParam("email_id") String emailId
					        , @RequestParam("email_domain") String emailDomain
					        , @RequestParam(value="terms_ids", required=false) int[] termsIds
			                ,  RedirectAttributes rttr
						) throws Exception{
		String email = emailId + "@" + emailDomain;
	    userDTO.setEmail(email);
		
		userService.join(userDTO, birthY, birthM, birthD, termsIds);
		
		rttr.addFlashAttribute("name", userDTO.getName());
		return "redirect:/join/joinComplete.do";
	}
	
	/*
	 * // 아이디 중복확인
	 * 
	 * @GetMapping(value = "/idCheck.ajax", produces =
	 * "application/json; charset=UTF-8")
	 * 
	 * @ResponseBody public Map<String, Object> idCheck(@RequestParam("user_id")
	 * String userId) throws SQLException { boolean taken =
	 * userService.isUserIdTaken(userId); return Map.of("count", taken ? 1 : 0); }
	 * 
	 * 
	 * // 이메일 중복확인
	 * 
	 * @GetMapping(value = "/emailCheck.ajax", produces =
	 * "application/json; charset=UTF-8")
	 * 
	 * @ResponseBody public Map<String, Object> emailCheck(@RequestParam("email")
	 * String email) throws Exception{ boolean taken =
	 * userService.isEmailTaken(email); return Map.of("count", taken ? 1 : 0); }
	 * 
	 * 
	 * // 별명 중복확인
	 * 
	 * @GetMapping(value = "/nicknameCheck.ajax", produces =
	 * "application/json; charset=UTF-8")
	 * 
	 * @ResponseBody public Map<String, Object>
	 * nicknameCheck(@RequestParam("nickname") String nickname) throws Exception{
	 * boolean taken = userService.isNicknameTaken(nickname); return Map.of("count",
	 * taken ? 1 : 0); }
	 * 
	 * 
	 * // 폰 중복확인 + 코드 전송
	 * 
	 * @PostMapping(value="/phoneSendCode.ajax",
	 * produces="text/plain; charset=UTF-8")
	 * 
	 * @ResponseBody public String phoneSendCode(@RequestParam("phone_no") String
	 * phone, HttpSession session) throws Exception {
	 * 
	 * // 6자리 코드 생성 String code = String.format("%06d", new
	 * java.util.Random().nextInt(1000000));
	 * 
	 * // 휴대폰 중복 체크 if (userService.isPhoneTaken(phone)) { return "DUPLICATE"; }
	 * 
	 * // 세션 저장 (5분 유효) session.setAttribute("PHONE_AUTH_PHONE", phone);
	 * session.setAttribute("PHONE_AUTH_CODE", code);
	 * session.setMaxInactiveInterval(60 * 5);
	 * 
	 * // 실제 SMS 전송 대신 콘솔 출력 System.out.println("☎️☎️[휴대폰 인증코드] " + phone + " => " +
	 * code);
	 * 
	 * return "SENT"; }
	 * 
	 * 
	 * 
	 * // 인증번호 확인
	 * 
	 * @PostMapping(value="/phoneVerifyCode.ajax",
	 * produces="text/plain; charset=UTF-8")
	 * 
	 * @ResponseBody public String phoneVerifyCode(@RequestParam("phone_no") String
	 * phone,
	 * 
	 * @RequestParam("code") String code, HttpSession session) { String savedPhone =
	 * (session == null) ? null : (String) session.getAttribute("PHONE_AUTH_PHONE");
	 * String savedCode = (session == null) ? null : (String)
	 * session.getAttribute("PHONE_AUTH_CODE");
	 * 
	 * boolean ok = phone != null && code != null && phone.equals(savedPhone) &&
	 * code.equals(savedCode);
	 * 
	 * if (ok) { session.setAttribute("PHONE_AUTH_OK", true); } return ok ? "OK" :
	 * "FAIL"; }
	 */
	
	
	
	
}
