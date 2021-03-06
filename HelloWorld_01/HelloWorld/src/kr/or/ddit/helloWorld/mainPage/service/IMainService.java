package kr.or.ddit.helloWorld.mainPage.service;

import kr.or.ddit.vo.MemberVO;

public interface IMainService {

	public int idCheck(MemberVO memVo);
	public int id_authority(String loginId);	
}
