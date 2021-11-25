package kr.co.codingmonkey.security;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Log4j
@Component
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {
	@Override	
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse resp, Authentication auth) throws IOException {
		log.warn("Login Success");

		String url = req.getParameter("url");
		req.getHeader("");
		
		if(url == null) {
			String referer = req.getHeader("referer");
			log.warn(referer);
		} else {
			
		}
		Set<String> roles = new HashSet<>();
		auth.getAuthorities().forEach(a-> roles.add(a.getAuthority()));
		
		if(roles.contains("ROLE_ADMIN")) {
			resp.sendRedirect("sample/admin");
			return;
		}
		if(roles.contains("ROLE_MEMBER")) {
			resp.sendRedirect("sample/member");
			return;
		}
		resp.sendRedirect("sample/all");
		
	}
	
}
