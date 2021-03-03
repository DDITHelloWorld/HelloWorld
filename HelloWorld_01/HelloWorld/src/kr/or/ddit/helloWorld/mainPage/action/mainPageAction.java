package kr.or.ddit.helloWorld.mainPage.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.helloWorld.mainPage.service.IMainService;
import kr.or.ddit.helloWorld.mainPage.service.MainServiceImpl;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.web.IAction;

public class mainPageAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		System.out.println("메인 페이지 액션 시작");
		HttpSession Session = request.getSession();
		System.out.println("세션 불러온이후");
		
		String loginId = "";
		loginId = request.getParameter("loginId");
		String loginPassword = request.getParameter("loginPassword");
		
		MemberVO memVo = new MemberVO();
		
		memVo.setMem_id(loginId);
		memVo.setMem_password(loginPassword);
		
		// String loginId = (String) Session.getAttribute("loginId");
		// String loginPassword = (String) Session.getAttribute("loginPassword");
		
		System.out.println("loginId" + loginId);
		System.out.println(loginPassword);
		System.out.println("if문 직전");
		
		if(!loginId.equals(null)) {
//		if(!loginId.equals(null) || !(loginId.equals(""))) {
//			System.out.println("로그인아이디가 널이 아니면");
//			
//			// 아이디 체크하기
//			IMainService service = MainServiceImpl.getInstance();
//			int result = service.idCheck(memVo);
//			System.out.println("서비스다돌고나옴");
//			System.out.println(result);
//			
//			if(result==0) { // 아이디/비밀번호가 다르다면
//				System.out.println("ELSE문");
//				// 로그인값이 맞지 않음 -> 첫 로그인 화면으로 다시 이동
//				request.setAttribute("alert", 0);
//				
//				return "/firstPage/firstPage.jsp";
//			} else {
//				// 세션에 저장하기
//				Session.setAttribute("loginId", loginId);
//				Session.setAttribute("loginPassword", loginPassword);
//				
//				String test = (String) Session.getAttribute("loginId");
//				
//				System.out.println(test);
//				// System.out.println(loginPassword);
//				
//				// RequestDispatcher rd = request.getRequestDispatcher("/myPage/myPageMain.ddit");
//				// rd.forward(request, response);			
//				
//				// 로그인 후 메인페이지로 이동
//				return "/mainPage/index.jsp";
//			}
//		} else {
//			return "/firstPage/firstPage.jsp";
//		}
		request.setAttribute("alert", 1);
		
		if(loginId.equals(null) || loginId.equals("")) {
			return "/firstPage/firstPage.jsp";
		} else {
			System.out.println("로그인아이디가 널이 아니면");
			// 아이디 체크하기
			IMainService service = MainServiceImpl.getInstance();
			int result = service.idCheck(memVo);
			System.out.println("서비스다돌고나옴");
			System.out.println(result);
			
			if(result==0) { // 아이디/비밀번호가 다르다면
				System.out.println("ELSE문");
				// 로그인값이 맞지 않음 -> 첫 로그인 화면으로 다시 이동
				request.setAttribute("alert", 0);
				
				return "/firstPage/firstPage.jsp";
			} else {
				// 세션에 저장하기
				Session.setAttribute("loginId", loginId);
				Session.setAttribute("loginPassword", loginPassword);
				
				String test = (String) Session.getAttribute("loginId");
				
				System.out.println(test);
				// System.out.println(loginPassword);
				
				// RequestDispatcher rd = request.getRequestDispatcher("/myPage/myPageMain.ddit");
				// rd.forward(request, response);			
				
				// 로그인 후 메인페이지로 이동
				return "/mainPage/index.jsp";
			}
		}
	}
}
