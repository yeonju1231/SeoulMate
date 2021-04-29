package com.seoulmate.home.dao;

import java.util.List;

import com.seoulmate.home.vo.HouseWriteVO;

public interface HouseWriteDAO {
	// 특정 대상의 하우스 목록 가져오기
	List<HouseWriteVO> houseList(String userid);
	// 하우스글의 성향 번호 가져오기
	int pnoCheck(String userid, int pno);
}
