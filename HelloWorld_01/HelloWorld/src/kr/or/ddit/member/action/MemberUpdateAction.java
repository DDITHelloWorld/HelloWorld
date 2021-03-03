package kr.or.ddit.member.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.web.IAction;

public class MemberUpdateAction implements IAction {

	@Override
	public boolean isRedirect() {
		return true; // url이 요청이기에 true로 해준다. 혹은 포워드로 따로 보내줘도 되지만 그렇게 되면 url이 변경되지 않는다.
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		
		String member_id = request.getParameter("member_id");
		String member_name = request.getParameter("member_name");
		String member_phone = request.getParameter("member_phone");
		String member_addr = request.getParameter("member_addr");
		
		System.out.println(member_id);
		System.out.println(member_name);
		
		MemberVO memVo = new MemberVO();
<<<<<<< HEAD
		memVo.setMember_id(mem_id);
		memVo.setMember_name(mem_name);;
		memVo.setMember_phone(mem_tel);
		memVo.setMember_address(mem_addr);
=======
		memVo.setMember_id(member_id);
		memVo.setMember_name(member_name);;
		memVo.setMember_phone(member_phone);
		memVo.setMember_address(member_addr);
>>>>>>> f3247130062a7fb3a802378b82c82b6293ff62f2
		
		IMemberService service = MemberServiceImpl.getInstance();
		service.updateMember(memVo);
		
		return "/member/memberList.ddit";
	}

}
