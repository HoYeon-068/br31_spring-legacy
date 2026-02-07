package com.br.app;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.br.app.domain.store.StoreDTO;
import com.br.app.mapper.store.StoreMapper;
import com.br.app.service.user.UserService;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class AjaxRestController {
	
	@Autowired
	private StoreMapper storeDao;
	
	/*
	@GetMapping("/user")
	public User getUser() {
		return new User("John","Doe",30);
	}
	*/
	
	@GetMapping("/store/mapSearch.ajax")
	public List<StoreDTO> mapSearchAjax(
			 	@RequestParam(value="services", required=false) String[] services,
			    @RequestParam(value="store_name", required=false) String store_name,
			    @RequestParam(value="sido", required=false) String sido,
			    @RequestParam(value="sigungu", required=false) String sigungu,
			    @RequestParam(value="store_type", required=false) String[] store_type
			) {
		
		/*
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=UTF-8");
        */
        
		try {
			return storeDao.select(services,store_name,sido,sigungu,store_type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
			
			
		
	      
	      
	}
	
	

	// ==================회원가입 
	@Autowired
	private UserService userService; 
	// 아이디 중복확인
		@GetMapping(value = "/join/idCheck.ajax", produces = "application/json; charset=UTF-8")
		public Map<String, Object> idCheck(@RequestParam("user_id") String userId) throws SQLException {
		      boolean taken = userService.isUserIdTaken(userId);
		      return Map.of("count", taken ? 1 : 0);
		  }
		
		
		// 이메일 중복확인
		@GetMapping(value = "/join/emailCheck.ajax", produces = "application/json; charset=UTF-8")
		public Map<String, Object> emailCheck(@RequestParam("email") String email) throws Exception{
			boolean taken = userService.isEmailTaken(email);
			return Map.of("count", taken ? 1 : 0);
		}
		
		
		// 별명 중복확인
		@GetMapping(value = "/join/nicknameCheck.ajax", produces = "application/json; charset=UTF-8")
		public Map<String, Object> nicknameCheck(@RequestParam("nickname") String nickname) throws Exception{
			boolean taken = userService.isNicknameTaken(nickname);
			return Map.of("count", taken ? 1 : 0);
		}
		
		
		// 폰 중복확인 + 코드 전송
		@PostMapping(value="/join/phoneSendCode.ajax", produces="text/plain; charset=UTF-8")
	    public String phoneSendCode(@RequestParam("phone_no") String phone,
	                                HttpSession session) throws Exception {

	        // 6자리 코드 생성
	        String code = String.format("%06d", new java.util.Random().nextInt(1000000));

	        // 휴대폰 중복 체크
	        if (userService.isPhoneTaken(phone)) {
	            return "DUPLICATE";
	        }

	        // 세션 저장 (5분 유효)
	        session.setAttribute("PHONE_AUTH_PHONE", phone);
	        session.setAttribute("PHONE_AUTH_CODE", code);
	        session.setMaxInactiveInterval(60 * 5);

	        // 실제 SMS 전송 대신 콘솔 출력
	        System.out.println("☎️☎️[휴대폰 인증코드] " + phone + " => " + code);

	        return "SENT";
	    }
		
		
		
		// 인증번호 확인
		@PostMapping(value="/join/phoneVerifyCode.ajax", produces="text/plain; charset=UTF-8")
		public String phoneVerifyCode(@RequestParam("phone_no") String phone,
				@RequestParam("code") String code,
	            HttpSession session) {
			String savedPhone = (session == null) ? null : (String) session.getAttribute("PHONE_AUTH_PHONE");
	        String savedCode  = (session == null) ? null : (String) session.getAttribute("PHONE_AUTH_CODE");

	        boolean ok = phone != null && code != null
	                && phone.equals(savedPhone)
	                && code.equals(savedCode);

	        if (ok) {
	            session.setAttribute("PHONE_AUTH_OK", true);
	        }
	        return ok ? "OK" : "FAIL";
		}
//=========회원가입		
	
	
	

	@GetMapping(value = "/api/store-address.do", produces = "application/json; charset=UTF-8")
    public String storeAddressProxy(
            @RequestParam(value="sido", required=false, defaultValue="") String sido
    ) throws Exception {

        String target = "https://www.baskinrobbins.co.kr/api/store-address.php?sido="
                + URLEncoder.encode(sido, StandardCharsets.UTF_8);

        HttpURLConnection conn = (HttpURLConnection) new URL(target).openConnection();
        conn.setRequestMethod("GET");
        conn.setConnectTimeout(5000);
        conn.setReadTimeout(5000);

        try (BufferedReader br = new BufferedReader(
                new InputStreamReader(conn.getInputStream(), StandardCharsets.UTF_8))) {

            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) sb.append(line);

            return sb.toString();
        }
    }

	
}
