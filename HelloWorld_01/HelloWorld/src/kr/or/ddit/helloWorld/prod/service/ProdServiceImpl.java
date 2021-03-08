package kr.or.ddit.helloWorld.prod.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.helloWorld.prod.dao.IProdDao;
import kr.or.ddit.helloWorld.prod.dao.ProdDaoImpl;
import kr.or.ddit.vo.AttractionVO;
import kr.or.ddit.vo.GuideVO;
import kr.or.ddit.vo.ProdDetailVO;
import kr.or.ddit.vo.ProdVO;
import kr.or.ddit.vo.Prod_insertVO;
import kr.or.ddit.vo.RelationshipVO;

public class ProdServiceImpl implements IProdService {
	
	private IProdDao dao;
	private static IProdService service;
	
	// 생성자
	private ProdServiceImpl() {
		dao = ProdDaoImpl.getDao();
	}
	
	// get메서드
	public static IProdService getService() {
		if(service == null) service = new ProdServiceImpl();
		return service;
	}
	
	@Override
	public List<Map<String, String>> selectByRegion(String region) {
		List<Map<String, String>> list = null;
		
		try {
			list = dao.selectByRegion(region);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<Map<String, String>> selectByBigRegion() {
		List<Map<String, String>> list = null;
		
		try {
			list = dao.selectByBigRegion();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<Map<String, String>> selectAll() {
		List<Map<String, String>> list = null;
		
		try {
			list = dao.selectAll();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<AttractionVO> selectAttraction(String region) {
		List<AttractionVO> list = null;
		
		try {
			list = dao.selectAttraction(region);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int insertProd(Prod_insertVO vo) {
		int cnt = 0;
		try {
			cnt = dao.insertProd(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int insertProdDetail(Prod_insertVO vo) {
		int cnt = 0;
		try {
			cnt = dao.insertProdDetail(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int insertRelationship(Prod_insertVO vo) {
		int cnt = 0;
		try {
			cnt = dao.insertRelationship(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<Prod_insertVO> selectOne(int prod_no) {
		List<Prod_insertVO> list = null;
		
		try {
			list = dao.selectOne(prod_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public GuideVO selectGuide(int prod_no) {
		GuideVO vo = null;
		
		try {
			vo = dao.selectGuide(prod_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}

	@Override
	public int selectWishCnt(int prod_no) {
		int cnt = 0;

		try {
			cnt = dao.selectWishCnt(prod_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int updateViews(int prod_no) {
		int cnt = 0;

		try {
			cnt = dao.updateViews(prod_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}


}
