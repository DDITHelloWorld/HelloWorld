package kr.or.ddit.helloWorld.prod.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.AttractionVO;
import kr.or.ddit.vo.GuideVO;
import kr.or.ddit.vo.ProdDetailVO;
import kr.or.ddit.vo.ProdVO;
import kr.or.ddit.vo.Prod_insertVO;
import kr.or.ddit.vo.RelationshipVO;

public interface IProdDao {
	
	// 전체 목록 가져오기
	public List<Map<String, String>> selectAll() throws SQLException;
	
	// 지역별 목록 가져오기(특별시X)
	public List<Map<String, String>> selectByRegion(String region) throws SQLException;
	
	// 지역별 목록 가져오기(특별시)
	public List<Map<String, String>> selectByBigRegion() throws SQLException;
	
	// 모달 - 지역에 따른 관광명소 검색 
	public List<AttractionVO> selectAttraction(String region) throws SQLException;
	
	// insert - prod테이블 
	public int insertProd(Prod_insertVO vo) throws SQLException;
	
	// insert - prod_detail테이블
	public int insertProdDetail(Prod_insertVO vo) throws SQLException;
	
	// insert - relationship테이블
	public int insertRelationship(Prod_insertVO vo) throws SQLException;
	
	// select - prod하나
	public List<Prod_insertVO> selectOne(int prod_no) throws SQLException;
	
	// select - guide정보
	public GuideVO selectGuide(int prod_no) throws SQLException;
	
	// select - 찜개수
	public int selectWishCnt(int prod_no) throws SQLException;
	
	// update - prod 조회수
	public int updateViews(int prod_no)	throws SQLException;

}
