package kr.or.ddit.helloWorld.prod.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.util.SqlMapUtil;
import kr.or.ddit.vo.ProdVO;

public class ProdDaoImpl implements IProdDao {

	private SqlMapClient client;
	private static IProdDao dao;
	
	// 생성자
	private ProdDaoImpl() {
		client = SqlMapUtil.getSqlMapClient();
	}
	
	public static IProdDao getDao() {
		if(dao == null) dao = new ProdDaoImpl();
		return dao;
	}
	
	@Override
	public List<Map<String, String>> selectByRegion(String region) throws SQLException {
		return client.queryForList("prod.selectByRegion", region);
	}

	@Override
	public List<Map<String, String>> selectByBigRegion() throws SQLException {
		return client.queryForList("prod.selectByBigRegion");
	}

	@Override
	public List<Map<String, String>> selectAll() throws SQLException {
		return client.queryForList("prod.selectAll");
	}

}
