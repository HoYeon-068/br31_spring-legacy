package com.br.app.mapper.user;

import java.sql.SQLException;
import java.util.List;

import com.br.app.domain.user.UserDTO;

public interface UserMapper {

List<UserDTO> select() throws SQLException;
	
	// 로그인
	UserDTO selectByIdAndPwd(String userId, String pwd) throws SQLException;
	
	
	// 아이디 찾기
	String findUserIdByPhone(String name, String phone) throws SQLException;
	String findUserIdByEmail(String name, String email) throws SQLException;

	// 비밀번호 재발급
	int resetPwd(String userId, String tempPwd ) throws SQLException;



	// 중복 체크
	boolean existsByUserId(String userId) throws SQLException;
	boolean existsByNickname(String nickname) throws SQLException;
	boolean existsByEmail(String email) throws SQLException;
	boolean existsByPhone(String phone) throws SQLException;

	// 회원가입
	int insert(UserDTO user) throws SQLException;
	int insertUserTermsBatch(String userId, int[] termsIds) throws SQLException;
	
	// 마이페이지
	UserDTO selectByUserId(String userId) throws SQLException;
	UserDTO selectByUserIdAndNameAndPhone(String userId, String email, String name) throws SQLException;
	boolean checkPassword(String userId, String oldPwd) throws Exception;
    int updatePassword(String userId, String newPwd) throws Exception;
    boolean isNicknameAvailable(String myUserId, String nickname) throws Exception;
    boolean isEmailAvailable(String myUserId, String email) throws Exception;
    int updateProfile(String userId, String nickname, String email, String phoneNo, String profileImgPath) throws Exception;

    // 관리자페이지
    List<UserDTO> getUserList() throws SQLException;
    int deleteUser(String userId) throws SQLException;

	
}
