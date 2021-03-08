package kr.or.ddit.helloWorld.mainPage.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.MemberVO;

public interface IMaindao {
	
	public int idCheck(MemberVO memVo);
	
	// select - top10여행지
	public List<Map<String, String>> selectTopProd() throws SQLException;
	
	// select - top10여행지
	public List<Map<String, String>> selectMonthProd() throws SQLException;
	
	public int id_authority(String loginId);

}
