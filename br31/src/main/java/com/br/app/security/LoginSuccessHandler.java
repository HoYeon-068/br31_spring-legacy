package com.br.app.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

// 인증 성공한 후에 다양한 처리
@Component
@Log4j
public class LoginSuccessHandler implements AuthenticationSuccessHandler  {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// 1. Spring Security가 저장해둔 '이전 페이지 요청' 정보 꺼내기
        RequestCache requestCache = new HttpSessionRequestCache();
        SavedRequest savedRequest = requestCache.getRequest(request, response);

        // 2. 만약 가려던 페이지 정보가 있다면 (예: /play/plaza/new.do)
        if (savedRequest != null) {
            String targetUrl = savedRequest.getRedirectUrl();
            log.warn("🚀 원래 가려던 페이지로 이동: " + targetUrl);
            response.sendRedirect(targetUrl);
            return;
        }

        // 3. 가려던 페이지 정보가 없다면 (직접 로그인을 눌렀을 경우) index로 이동
        log.warn("🏡 가려던 페이지가 없으므로 메인으로 이동");
        response.sendRedirect(request.getContextPath() + "/index.do");
	      
	}

}
