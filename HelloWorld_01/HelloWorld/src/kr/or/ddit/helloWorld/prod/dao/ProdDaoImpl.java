package kr.or.ddit.helloWorld.prod.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.util.SqlMapUtil;
import kr.or.ddit.vo.AttractionVO;
import kr.or.ddit.vo.GuideVO;
import kr.or.ddit.vo.Prod_insertVO;

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

	@Override
	public List<AttractionVO> selectAttraction(String region) throws SQLException {
		return client.queryForList("prod.selectAttraction", region);
	}

	@Override
	public int insertProd(Prod_insertVO vo) throws SQLException {
		return (int) client.insert("prod.insertProd", vo);
	}

	@Override
	public int insertProdDetail(Prod_insertVO vo) throws SQLException {
		return (int) client.insert("prod.insertProdDetail", vo);
	}

	@Override
	public int insertRelationship(Prod_insertVO vo) throws SQLException {
		return (int) client.insert("prod.insertRelationship", vo);
	}

	@Override
	public List<Prod_insertVO> selectOne(int prod_no) throws SQLException {
		return (List<Prod_insertVO>) client.queryForList("prod.selectOne", prod_no);
	}

	@Override
	public GuideVO selectGuide(int prod_no) throws SQLException {
		return (GuideVO)client.queryForObject("prod.selectGuide", prod_no);
	}

}
