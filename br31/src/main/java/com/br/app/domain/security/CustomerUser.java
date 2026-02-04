package com.br.app.domain.security;

import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.br.app.domain.user.UserDTO;

import lombok.Getter;

@Getter
public class CustomerUser extends User{

	private UserDTO user;
	
	public CustomerUser(String username, String password, Integer admin, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities) {
		super(username,password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
	}

	public CustomerUser(UserDTO user) {
		super(
	            user.getUserId(),
	            user.getPassword(),
	            Collections.singletonList(
	                new SimpleGrantedAuthority(
	                    (user.getAdmin() != null && user.getAdmin() == 1)
	                        ? "ROLE_ADMIN"
	                        : "ROLE_USER"
	                )
	            )
	        );
		this.user = user;
	}
	
	
	
}
