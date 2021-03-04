package kr.or.ddit.helloWorld.prod.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.ProdVO;

public interface IProdService {
	
	// 전체 목록 가져오기
	public List<Map<String, String>> selectAll();
	
	// 지역별 목록 가져오기
	public List<Map<String, String>> selectByRegion(String region);
	
	// 지역별 목록 가져오기(특별시)
	public List<Map<String, String>> selectByBigRegion();
}
