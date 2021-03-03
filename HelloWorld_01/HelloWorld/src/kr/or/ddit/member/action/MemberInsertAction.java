package kr.or.ddit.member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.web.IAction;

public class MemberInsertAction implements IAction{

	@Override
	public boolean isRedirect() {
//		return false; // 아래의 process()메서드의 반환값이 요청 URI일 경우에
				// true를 반환하도록 하여 지정한 요청 URI로 redirect시킨다.
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		
		String member_id = request.getParameter("member_id");
		String member_name = request.getParameter("member_name");
		String member_phone = request.getParameter("member_tel");
		String member_addr = request.getParameter("member_addr");
	
		MemberVO memVo = new MemberVO();

		memVo.setMember_id(member_id);
		memVo.setMember_name(member_name);;
		memVo.setMember_phone(member_phone);
		memVo.setMember_address(member_addr);
		
		IMemberService service = MemberServiceImpl.getInstance();
		service.insertMember(memVo); // DB에 insert하기
		
//		RequestDispatcher rd = request.getRequestDispatcher("/member/memberList.ddit");
//		try {
//			rd.forward(request, response);
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		return "/member/memberList.ddit";
	}

}
