package kr.or.ddit.helloWorld.prod.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.helloWorld.prod.dao.IProdDao;
import kr.or.ddit.helloWorld.prod.dao.ProdDaoImpl;
import kr.or.ddit.vo.ProdVO;

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

}
