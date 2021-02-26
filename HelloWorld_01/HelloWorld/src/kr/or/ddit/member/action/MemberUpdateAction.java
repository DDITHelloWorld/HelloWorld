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
		
		String mem_id = request.getParameter("mem_id");
		String mem_name = request.getParameter("mem_name");
		String mem_tel = request.getParameter("mem_tel");
		String mem_addr = request.getParameter("mem_addr");
		
		System.out.println(mem_id);
		System.out.println(mem_name);
		
		MemberVO memVo = new MemberVO();
		memVo.setMem_id(mem_id);
		memVo.setMem_name(mem_name);;
		memVo.setMem_tel(mem_tel);
		memVo.setMem_addr(mem_addr);
		
		IMemberService service = MemberServiceImpl.getInstance();
		service.updateMember(memVo);
		
		return "/member/memberList.ddit";
	}

}
