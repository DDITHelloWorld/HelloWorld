package kr.or.ddit.helloWorld.mainPage.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;
import kr.or.ddit.util.SqlMapUtil;
import kr.or.ddit.vo.MemberVO;

public class MainDaoImpl implements IMaindao {

	private SqlMapClient smc;
	private static MainDaoImpl dao;
	
	private MainDaoImpl() {
		smc = SqlMapUtil.getSqlMapClient();
	}
	
	public static MainDaoImpl GetInstance() {
		if(dao==null) dao = new MainDaoImpl();
		return dao;
	}
	
	@Override
	public int idCheck(MemberVO memVo) {
		int cnt = 0;
		
		try {
			cnt = (int)smc.queryForObject("firstPage.idCheck", memVo);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		
		return cnt;
	}
	

	@Override
	public List<Map<String, String>> selectTopProd() throws SQLException {
		return smc.queryForList("prod.selectTopProd");
	}

	@Override
	public List<Map<String, String>> selectMonthProd() throws SQLException {
		return smc.queryForList("prod.selectMonthProd");
	}
	
	@Override
	public int id_authority(String loginId) {
		int cnt = 0;

		try {
			cnt = (int) smc.queryForObject("mypage.authorityCheck", loginId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

}
