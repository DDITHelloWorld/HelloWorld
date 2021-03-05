package kr.or.ddit.helloWorld.prod.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.AttractionVO;
import kr.or.ddit.vo.GuideVO;
import kr.or.ddit.vo.ProdDetailVO;
import kr.or.ddit.vo.Prod_insertVO;
import kr.or.ddit.vo.RelationshipVO;

public interface IProdService {
	
	// 전체 목록 가져오기
	public List<Map<String, String>> selectAll();
	
	// 지역별 목록 가져오기
	public List<Map<String, String>> selectByRegion(String region);
	
	// 지역별 목록 가져오기(특별시)
	public List<Map<String, String>> selectByBigRegion();

	// 모달 - 지역에 따른 관광명소 검색 
	public List<AttractionVO> selectAttraction(String region);
	
	// insert - prod테이블 
	public int insertProd(Prod_insertVO vo);
	
	// insert - prod_detail테이블
	public int insertProdDetail(Prod_insertVO vo);
	
	// insert - relationship테이블
	public int insertRelationship(Prod_insertVO vo);
	
	// select - prod하나
	public List<Prod_insertVO> selectOne(int prod_no);
	
	// select - guide정보
	public GuideVO selectGuide(int prod_no);
}
