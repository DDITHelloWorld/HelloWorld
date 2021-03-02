package kr.or.ddit.helloWorld.mainPage.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.web.IAction;

public class mainPageAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		

		HttpSession hs = request.getSession();
		String loginId = (String) hs.getAttribute("loginId");
		String loginPassword = (String) hs.getAttribute("loginPassword");
		
		if(!loginId.equals(null)) {
			
			
			
			return "로그인이후페이지";
		} else {
			return "/mainPage/index.html";
		}

	}
}
