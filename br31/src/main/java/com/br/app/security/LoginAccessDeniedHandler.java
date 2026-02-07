package com.br.app.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;
// 권한 없을 때 
// 403 접근 금지 에러를 다양한 처리를 직접하기 위한 클래스 (객체)
@Component("loginAccessDeniedHandler")
@Log4j
public class LoginAccessDeniedHandler implements AccessDeniedHandler {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		  log.error("👌👌👌 Access Denied Handler");
	      log.error("👌👌👌 Redirect...");
	      // 개발자 직접 하고자 하는 다양한 처리  코딩.
	      
	      System.out.println("[DENIED] uri=" + request.getRequestURI());
	      System.out.println("[DENIED] query=" + request.getQueryString());

	      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      System.out.println("[DENIED] auth=" + auth);
	      System.out.println("[DENIED] authorities=" + (auth != null ? auth.getAuthorities() : null));

	      response.sendRedirect("/common/accessError.htm");
	}

}
