package com.br.app.controller.user;

import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.br.app.domain.user.UserDTO;
import com.br.app.mapper.user.UserMapper;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    private String getLoginUserIdOrNull() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth == null || "anonymousUser".equals(auth.getPrincipal())) return null;

        Object principal = auth.getPrincipal();
        if (principal instanceof UserDetails) {
            return ((UserDetails) principal).getUsername();
        }
        return null;
    }

    private UserDTO getLoginUserOrNull() throws SQLException {
        String userId = getLoginUserIdOrNull();
        if (userId == null) return null;
        return userMapper.selectByUserId(userId);
    }

    @GetMapping("/mypage.do")
    public String mypage(Model model) throws SQLException {
        UserDTO loginUser = getLoginUserOrNull();
        if (loginUser == null) return "redirect:/login/login.do";
        model.addAttribute("loginUser", loginUser);
        return "mypage/mypage";
    }

    @GetMapping("/profileEdit.do")
    public String profileEdit(Model model) throws SQLException {
        UserDTO loginUser = getLoginUserOrNull();
        if (loginUser == null) return "redirect:/login/login.do";
        model.addAttribute("loginUser", loginUser);
        return "mypage/profileEdit";
    }

    @PostMapping("/profileEditSubmit.do")
    public String profileEditSubmit(
    		@RequestParam String oldPassword,
    	    @RequestParam(required=false) String newPassword,
    	    @RequestParam(required=false) String nickname,
    	    @RequestParam(required=false, name="email_id") String emailId,
    	    @RequestParam(required=false, name="email_domain") String emailDomain,
    	    @RequestParam(required=false, name="phone_no") String phoneNo,
    	    @RequestParam(required=false, name="profile_img") String profileImg,
            RedirectAttributes rttr,
            Model model
    ) throws Exception {

        String userId = getLoginUserIdOrNull();
        if (userId == null) return "redirect:/login/login.do";

        UserDTO dbUser = userMapper.selectByUserId(userId);

        if (oldPassword == null || oldPassword.trim().isEmpty()) {
            model.addAttribute("error", "저장하려면 현재 비밀번호를 입력해야 합니다.");
            model.addAttribute("loginUser", dbUser);
            return "mypage/profileEdit";
        }

        if (!passwordEncoder.matches(oldPassword, dbUser.getPassword())) {
            model.addAttribute("error", "현재 비밀번호가 올바르지 않습니다.");
            model.addAttribute("loginUser", dbUser);
            return "mypage/profileEdit";
        }

        // nickname 중복 체크 (변경된 경우만)
        if (nickname != null && !nickname.trim().isEmpty() && !nickname.equals(dbUser.getNickname())) {
            int cnt = userMapper.countNicknameUsedByOthers(userId, nickname);
            if (cnt > 0) {
                model.addAttribute("error", "이미 사용 중인 닉네임입니다.");
                model.addAttribute("loginUser", dbUser);
                return "mypage/profileEdit";
            }
        } else {
            nickname = null;
        }

        // email 중복 체크 (변경된 경우만)

        String email = null;
        if (emailId != null && !emailId.trim().isEmpty()
                && emailDomain != null && !emailDomain.trim().isEmpty()) {
            email = emailId.trim() + "@" + emailDomain.trim();
        }
        if (email != null && !email.trim().isEmpty() && !email.equals(dbUser.getEmail())) {
            int cnt = userMapper.countEmailUsedByOthers(userId, email);
            if (cnt > 0) {
                model.addAttribute("error", "이미 사용 중인 이메일입니다.");
                model.addAttribute("loginUser", dbUser);
                return "mypage/profileEdit";
            }
        } else {
            email = null;
        }

        if (phoneNo == null || phoneNo.trim().isEmpty()) phoneNo = null;

        String profileImgPath = null;
        if ("A".equalsIgnoreCase(profileImg)) profileImgPath = "/resources/images/mypage/img_profile_1.png";
        else if ("B".equalsIgnoreCase(profileImg)) profileImgPath = "/resources/images/mypage/img_profile_2.png";

        // 새 비밀번호 변경
        if (newPassword != null && !newPassword.trim().isEmpty()) {
            String enc = passwordEncoder.encode(newPassword);
            userMapper.updatePassword(userId, enc);
        }

        userMapper.updateProfile(userId, nickname, email, phoneNo, profileImgPath);

        rttr.addFlashAttribute("msg", "프로필이 수정되었습니다.");
        return "redirect:/mypage/mypage.do";
    }
    
    @PostMapping(value="/nicknameCheck.do", produces="application/json; charset=UTF-8")
    @ResponseBody
    public java.util.Map<String, Integer> nicknameCheck(@RequestParam String nickname) throws Exception {

        String userId = getLoginUserIdOrNull();
        int cnt;

        if (userId == null) {
            cnt = 999; // 로그인 안됨(프론트에서 예외 처리용)
        } else {
            nickname = nickname == null ? "" : nickname.trim();
            cnt = userMapper.countNicknameUsedByOthers(userId, nickname);
        }

        java.util.Map<String, Integer> map = new java.util.HashMap<>();
        map.put("count", cnt);
        return map;
    }
    
    @PostMapping(value="/emailCheck.do", produces="application/json; charset=UTF-8")
    @ResponseBody
    public java.util.Map<String, Integer> emailCheck(@RequestParam String email) throws Exception {

        String userId = getLoginUserIdOrNull();
        int cnt;

        if (userId == null) {
            cnt = 999;
        } else {
            email = email == null ? "" : email.trim();
            cnt = userMapper.countEmailUsedByOthers(userId, email);
        }

        java.util.Map<String, Integer> map = new java.util.HashMap<>();
        map.put("count", cnt);
        return map;
    }


}
