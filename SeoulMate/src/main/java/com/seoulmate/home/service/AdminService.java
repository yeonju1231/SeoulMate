package com.seoulmate.home.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.seoulmate.home.vo.HouseWriteVO;
import com.seoulmate.home.vo.MateWriteVO;
import com.seoulmate.home.vo.MemberVO;
import com.seoulmate.home.vo.PageVO;
import com.seoulmate.home.vo.PagingVO;
import com.seoulmate.home.vo.PayVO;

public interface AdminService {
	// 회원 목록 출력
	public List<String> memberSelect(PagingVO pVO);
	//회원 정보 출력
	public MemberVO memberInfo(String userid);
	// 회원 정보 수정
	public int memberInfoSave(MemberVO vo);
	// 회원 프로필 선택
	public String memberProfile(String userid);
	// 회원 총 레코드
	public int membertotalRecord(PagingVO pVO);
	
//house Management ///////////////////////////////////////
	public int houseTotalRecode(Map<String, Object> map);
	// 하우스관리 페이지 리스트 가져오기 
	public List<HouseWriteVO> houseOnePageListSelect(Map<String, Object> map);
	// 하우스관리 - 개인정보 확인 
	public List<Map<String, Object>> houseDetailInfoSelect(HouseWriteVO hwVO);
	
// mate Management ///////////////////////////////////////
	public int mateTotalRecode(Map<String, Object> map);
	public List<MateWriteVO> mateOnePageListSelect(Map<String, Object> map);
//pay management /////////////////////////////////////////
	// 결제관리 페이지 총 레코드 수 확인 
	public int payTotalRecode(Map<String, Object> map);

	public List<PayVO> payOnePageListSelect(Map<String, Object> map);
	
//sales management ///////////////////////////////////////
	public List<PayVO> salesOnePageListSelect(Map<String, Object> map);
	//조건에맞는 레코드의 총 합계 구하기
	public PayVO salesTotalAmountSelect(PayVO payVO);


}
