package com.br.app.service.user;

import java.sql.Date;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.br.app.domain.user.UserDTO;
import com.br.app.mapper.user.UserMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UserService {
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	public void join(UserDTO userDTO, String birthY, String birthM, String birthD, int[] termsIds) throws SQLException {
		String strBirth = String.format("%s-%02d-%02d",
                birthY,
                Integer.parseInt(birthM),
                Integer.parseInt(birthD)
        );
		
		userDTO.setBirth(Date.valueOf(strBirth));
		
		// 비밀번호를 암호화
		String bcryptPwd = this.passwordEncoder.encode( userDTO.getPassword());
		userDTO.setPassword(bcryptPwd);
		
		userMapper.insert(userDTO);
		
		if (termsIds != null && termsIds.length > 0) {
	        userMapper.insertUserTermsBatch(userDTO.getUserId(), termsIds);
		}
		
	}
	
	
	
	public boolean  isUserIdTaken(String userId) throws SQLException {
            return userMapper.existsByUserId(userId) > 0;
    }
	
	public boolean isEmailTaken(String email) throws Exception {
            return userMapper.existsByEmail(email) > 0;
    }
	
	public boolean isNicknameTaken(String nickname) throws Exception {
            return userMapper.existsByNickname(nickname)> 0;
    }
	
	 public boolean isPhoneTaken(String phone) throws Exception {
            return userMapper.existsByPhone(phone)> 0;
	}
	
	 
	 // 아이디 찾기
	 public String findUserIdByEmail(String name, String email) throws Exception {
	        return userMapper.findUserIdByEmail(name, email);
	    }
	 public String findUserIdByPhone(String name, String phoneNo) throws Exception {
	        // phoneNo가 "010-1234-5678" 형태면 DB 비교 위해 하이픈 제거가 필요할 수 있음
	        String pure = phoneNo == null ? null : phoneNo.replace("-", "");
	        return userMapper.findUserIdByPhone(name, pure);
	    }
	 public UserDTO getUserById(String userId) throws Exception {
	        return userMapper.selectByUserId(userId);
	    }
	 
	 // 비밀번호 재발급
	 public int resetPasswordByUserIdAndPhoneAndName(String userId, String tempPwd, String name, String phone) throws Exception {
	            
	         // phone이 하이픈 포함될 수 있으니 맞춰주기
	            String purePhone = phone == null ? null : phone.replace("-", "").trim();

	            UserDTO userDTO = userMapper.selectByUserIdAndNameAndPhone(userId, name, purePhone);
	            if (userDTO == null) return 0;

	            // 반드시 암호화해서 저장
	            String encPwd = passwordEncoder.encode(tempPwd);
	            return userMapper.resetPwd(userId, encPwd);
	    }
	
}
