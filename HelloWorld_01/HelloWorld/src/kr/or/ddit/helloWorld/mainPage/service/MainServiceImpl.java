package kr.or.ddit.helloWorld.mainPage.service;

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
	public int id_authority(String loginId) {
		
		return mainDao.id_authority(loginId);
	}	

}
