package kr.or.ddit.helloWorld.mainPage.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.MemberVO;

public interface IMainService {

	public int idCheck(MemberVO memVo);

	// select - top10여행지
	public List<Map<String, String>> selectTopProd();
	
	// select - top10여행지
	public List<Map<String, String>> selectMonthProd();
	
	public int id_authority(String loginId);
}
