package kr.or.ddit.helloWorld.mainPage.dao;

import kr.or.ddit.vo.MemberVO;

public interface IMaindao {
	
	public int idCheck(MemberVO memVo);
	
	public int id_authority(String loginId);
	
}
