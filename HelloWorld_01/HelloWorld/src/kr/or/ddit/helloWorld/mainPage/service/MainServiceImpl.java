package kr.or.ddit.helloWorld.mainPage.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.helloWorld.mainPage.dao.IMaindao;
import kr.or.ddit.helloWorld.mainPage.dao.MainDaoImpl;
import kr.or.ddit.vo.MemberVO;

public class MainServiceImpl implements IMainService{
	
	private IMaindao mainDao;
	private static MainServiceImpl service;
	
	public MainServiceImpl() {
		mainDao = MainDaoImpl.GetInstance();
	}
	
	public static MainServiceImpl getInstance() {
		if(service==null) service = new MainServiceImpl();
		return service;		
	}

	@Override
	public int idCheck(MemberVO memVo) {
		
		return mainDao.idCheck(memVo);
	}
	

	@Override
	public List<Map<String, String>> selectTopProd() {
		List<Map<String, String>> list = null;

		try {
			list = mainDao.selectTopProd();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<Map<String, String>> selectMonthProd() {
		List<Map<String, String>> list = null;

		try {
			list = mainDao.selectMonthProd();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	@Override
	public int id_authority(String loginId) {
		
		return mainDao.id_authority(loginId);
	}	
}
