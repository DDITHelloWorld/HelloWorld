package kr.or.ddit.helloWorld.firstPage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.web.IAction;

public class FirstPageAction implements IAction{

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("첫페이지들어옴");
		// 실제 처리할 내용은 이곳에 기술하고 처리가 끝난 후에 보여줄 View페이지를 반환하면 된다.
		HttpSession Session = request.getSession();
		
		// 세션값들을 비운다.
		Session.invalidate();
		
		// 로그인페이지를 띄워준다.
		return "/firstPage/firstPage.jsp";
	}

}
