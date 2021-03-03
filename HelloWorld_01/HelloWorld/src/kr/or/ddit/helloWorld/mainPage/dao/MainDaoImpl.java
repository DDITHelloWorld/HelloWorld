package kr.or.ddit.helloWorld.mainPage.dao;

import java.sql.SQLException;

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

}
