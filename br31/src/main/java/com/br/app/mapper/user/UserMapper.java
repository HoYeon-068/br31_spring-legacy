package com.br.app.mapper.user;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.br.app.domain.user.UserDTO;

public interface UserMapper {

List<UserDTO> select() throws SQLException;
	
	// 로그인
	UserDTO selectByIdAndPwd(@Param("userId") String userId, @Param("password") String pwd) throws SQLException;
	UserDTO selectByName(String name) throws SQLException;
	
	// 아이디 찾기
	String findUserIdByPhone(@Param("name") String name,
            @Param("phoneNo") String phoneNo) throws SQLException;
	String findUserIdByEmail(@Param("name") String name,
            @Param("email") String email) throws SQLException;

	// 비밀번호 재발급
	int resetPwd(@Param("userId") String userId, @Param("tempPwd") String tempPwd ) throws SQLException;



	// 중복 체크
	int existsByUserId(String userId) throws SQLException;
	int existsByNickname(String nickname) throws SQLException;
	int existsByEmail(String email) throws SQLException;
	int existsByPhone(String phone) throws SQLException;

	// 회원가입
	int insert(UserDTO user) throws SQLException;
	int insertUserTermsBatch(@Param("userId") String userId,
            @Param("termsIds") int[] termsIds) throws SQLException;
	
	// 마이페이지
	UserDTO selectByUserId(@Param("userId") String userId) throws SQLException;
	UserDTO selectByUserIdAndNameAndPhone(@Param("userId") String userId,
		    @Param("name") String name,
		    @Param("phoneNo") String phoneNo) throws SQLException;

	String selectPasswordByUserId(@Param("userId") String userId) throws SQLException;
	
	int updatePassword(@Param("userId") String userId, @Param("newPwd") String newPwd) throws Exception;
	int countNicknameUsedByOthers(@Param("userId") String userId, @Param("nickname") String nickname) throws SQLException;
    int countEmailUsedByOthers(@Param("userId") String userId, @Param("email") String email) throws SQLException;
    int updateProfile(
    		  @Param("userId") String userId,
    		  @Param("nickname") String nickname,
    		  @Param("email") String email,
    		  @Param("phoneNo") String phoneNo,
    		  @Param("profileImgPath") String profileImgPath
    		) throws Exception;

    // 관리자페이지/회원탈퇴
    List<UserDTO> getUserList() throws SQLException;
    int deleteUser(String userId) throws SQLException;

	
}
