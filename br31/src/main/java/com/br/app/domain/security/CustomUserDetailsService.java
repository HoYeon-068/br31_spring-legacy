package com.br.app.domain.security;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.br.app.domain.user.UserDTO;
import com.br.app.mapper.user.UserMapper;

import lombok.extern.log4j.Log4j;

@Component
@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserMapper userMapper;
	
	



	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
log.warn("👍👍👍👍👍👍 CustomUserDetailsService.loadUserByUsername() username : " + username);
		
		UserDTO userDTO =null;
		try {
			userDTO =  this.userMapper.selectByUserId(username);
		} catch (SQLException e) {
			System.out.println("> ❌CustomUserDetailsService.loadUserByUsername() Exception");
			e.printStackTrace();
		}
		log.warn(">>> login input(username) = [" + username + "]");
		if (userDTO == null) {
		    throw new UsernameNotFoundException("User not found: " + username);
		}
		return new CustomerUser(userDTO);
	}

}
