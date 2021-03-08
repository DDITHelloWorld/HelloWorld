package kr.or.ddit.helloWorld.mainPage.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.helloWorld.firstPage.service.FirstPageServiceImpl;
import kr.or.ddit.helloWorld.firstPage.service.IFirstPageService;
import kr.or.ddit.helloWorld.mainPage.service.IMainService;
import kr.or.ddit.helloWorld.mainPage.service.MainServiceImpl;
import kr.or.ddit.helloWorld.member.service.IMemberService;
import kr.or.ddit.helloWorld.member.service.MemberServiceImpl;
import kr.or.ddit.vo.AdminVO;
import kr.or.ddit.vo.GuideVO;
import kr.or.ddit.vo.Id_infoVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.web.IAction;

public class MainPageAction implements IAction {

	@Override
	public boolean isRedirect() {
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {

		System.out.println("메인 페이지 액션 시작");
		HttpSession Session = request.getSession();
		System.out.println("세션 불러온이후");
		
		String loginId = "";
		loginId = request.getParameter("loginId");
		String loginPassword = request.getParameter("loginPassword");
		
		Id_infoVO idVo = new Id_infoVO();
		idVo.setId(loginId);

		// id존재여부 체크
		IFirstPageService service = FirstPageServiceImpl.getInstance();
		IMainService service2 = MainServiceImpl.getInstance();
		IMemberService service3 = MemberServiceImpl.getInstance();
		int result = service.id_infoCheck(loginId);
		System.out.println("id존재여부 체크값 : " + result);

		if (result == 0) {
			return "/firstPage/firstPage.jsp";
		}
		
		// 아이디의 권한값 받아오기
		int authority = service2.id_authority(loginId);
		System.out.println(loginId + "의 권한 값 : " + authority);

		// FirstPage의 mvc이용함
		// 비밀번호 체크 후 정보 받아오기
		if (authority == 0) {
			// 관리자 아이디,비밀번호 체크
			AdminVO adminVo = new AdminVO();
			adminVo.setAdmin_id(loginId);
			adminVo.setAdmin_password(loginPassword);

			// DB돌고 VO모든 정보 셋팅
			adminVo = service.id_adminInfomation(adminVo);

			// 값이 없으면 로그인페이지로 이동
			if (adminVo == null || adminVo.equals("")) {
				return "/firstPage/firstPage.jsp";
			} else {
				// 값이 있으면 정보 저장하고 로그인 처리
				Session.setAttribute("loginId", loginId);
				Session.setAttribute("loginPassword", loginPassword);
				Session.setAttribute("authority", authority);
				
				Session.setAttribute("loginVo", adminVo);
				return "/header/mainPage.do";
			}
		} else if (authority == 1) {
			// 가이드 아이디, 비밀번호 체크
			GuideVO guideVo = new GuideVO();
			
			guideVo.setGuide_id(loginId);
			guideVo.setGuide_password(loginPassword);
			
			// DB돌고 VO모든 정보 셋팅
			guideVo = service.id_guideInfomation(guideVo);
			
			// 값이 없으면 로그인페이지로 이동
			if (guideVo == null || guideVo.equals("")) {
				return "/firstPage/firstPage.jsp";
			} else {
				// 값이 있으면 정보 저장하고 로그인 처리
				Session.setAttribute("loginId", loginId);
				Session.setAttribute("loginPassword", loginPassword);
				Session.setAttribute("authority", authority);
				
				Session.setAttribute("loginVo", guideVo);
				return "/header/mainPage.do";
			}
			
		} else if (authority == 2) {
			// 회원이면 회원정보.

			MemberVO memVo = new MemberVO();

			memVo.setMember_id(loginId);
			memVo.setMember_password(loginPassword);

			if (loginId.equals(null) || loginId.equals("")) {
				return "/firstPage/firstPage.jsp";
			} else {
				// 아이디 체크하기

				result = service2.idCheck(memVo);
				System.out.println("서비스다돌고나옴");
				System.out.println(result);

				if (result == 0) { // 아이디/비밀번호가 다르다면
					System.out.println("ELSE문");
					// 로그인값이 맞지 않음 -> 첫 로그인 화면으로 다시 이동
					request.setAttribute("alert", 0);

					return "/firstPage/firstPage.jsp";
				} else {
					// 세션에 저장하기
					Session.setAttribute("loginId", loginId);
					Session.setAttribute("loginPassword", loginPassword);
					Session.setAttribute("authority", authority);
					
					MemberVO memberVo = new MemberVO();
					memberVo = service3.memberInfomation(loginId);

					Session.setAttribute("loginVo", memberVo);

					// 로그인 후 메인페이지로 이동
					return "/header/mainPage.do";
//					return "/mainPage/index.jsp";
				}
			}
		}
		return "/firstPage/firstPage.jsp";
	}
}
