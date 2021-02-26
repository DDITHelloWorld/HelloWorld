package kr.or.ddit.helloWorld.myPage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.web.IAction;

public class myPageMainAction implements IAction{

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 실제 처리할 내용은 이곳에 기술하고 처리가 끝난 후에 보여줄 View페이지를 반환하면 된다.

		return "/myPage/myPageMain.html";
	}

}
