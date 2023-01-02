package org.kabart.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import lombok.Data;

@Data
public class LoginFailureHandler implements AuthenticationFailureHandler {

    private final String default_failure_url = "/kabart/login?error=ture";
    
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		String errormsg = null;
		
		if(exception instanceof BadCredentialsException || exception instanceof InternalAuthenticationServiceException) {
			errormsg = "아이디나 비밀번호가 맞지 않습니다. 다시 확인해주세요.";
		} else if (exception instanceof UsernameNotFoundException) {
			errormsg = "존재하지 않는 아이디입니다.";
		}
		else {
			errormsg = "알 수 없는 이유로 로그인에 실패하였습니다. 관리자에게 문의하세요.";
		}
		
		request.setAttribute("error_msg", errormsg);
		request.getRequestDispatcher(default_failure_url).forward(request, response);
	}

}
