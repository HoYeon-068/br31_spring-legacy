package com.br.app.domain.user;

import java.util.Date;

import com.br.app.domain.story.StoryDTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDTO {
	private String userId;
	private String password;
	private String name;
	private String phoneNo;  // 앞에 0이 사라져서 String
	private String email;
	private Date joinDate;
	private Integer admin;
	private String gender;
	private Date birth;
	private String nickname;
	private String profileImgPath;
	
}
