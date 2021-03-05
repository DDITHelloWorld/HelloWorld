package kr.or.ddit.helloWorld.prod.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.ProdVO;

public interface IProdDao {
	
	// 전체 목록 가져오기
	public List<Map<String, String>> selectAll() throws SQLException;
	
	// 지역별 목록 가져오기(특별시X)
	public List<Map<String, String>> selectByRegion(String region) throws SQLException;
	
	// 지역별 목록 가져오기(특별시)
	public List<Map<String, String>> selectByBigRegion() throws SQLException;
}
