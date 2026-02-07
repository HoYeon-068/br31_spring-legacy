package com.br.app.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

// 인증 성공한 후에 다양한 처리
@Component
@Log4j
public class LoginSuccessHandler implements AuthenticationSuccessHandler  {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		  log.warn("😘😘😘 Login Success...");
	      // 인증사용자가 가지고 있는 롤(Role) == 권한
	      
	      List<String> roleNames = new ArrayList<String>();
	      
	      authentication.getAuthorities().forEach( auth -> {
	         roleNames.add(auth.getAuthority());
	      } );
	      
	      log.warn("👍 > ROLE NAMES : " + roleNames );
	      
	      if ( roleNames.contains("ROLE_ADMIN") ) {
	         response.sendRedirect(request.getContextPath() + "/index.do");
	         return;
	      } else if ( roleNames.contains("ROLE_MANAGER") ) {
	         response.sendRedirect(request.getContextPath() + "/index.do");
	         return;
	      } else if ( roleNames.contains("ROLE_USER") ) {
	         response.sendRedirect(request.getContextPath() + "/index.do");
	         return;
	      }
	      
	}

}
