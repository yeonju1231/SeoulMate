package com.seoulmate.home.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.seoulmate.home.dao.HouseRoomDAO;
import com.seoulmate.home.dao.HouseWriteDAO;
import com.seoulmate.home.dao.PropensityDAO;
import com.seoulmate.home.vo.HouseRoomVO;
import com.seoulmate.home.vo.HouseWriteVO;
import com.seoulmate.home.vo.PropensityVO;
@Service
public class HouseServiceImp implements HouseService {
	@Inject
	HouseRoomDAO dao; //방 등록
	@Inject
	HouseWriteDAO hDAO; //하우스 등록
	@Inject
	PropensityDAO pDAO; //성향 등록

	@Override
	public int roomInsert(HouseRoomVO vo) { //하우스(방) 등록
		return dao.roomInsert(vo);
	}

	@Override
	public int houseInsert(HouseWriteVO vo) { //하우스 등록
		// TODO Auto-generated method stub
		return hDAO.houseInsert(vo);
	}

	@Override
	public int propInsert(PropensityVO vo) { //성향 등록
		// TODO Auto-generated method stub
		return pDAO.propInsert(vo);
	}

	@Override
	public int propHouseUpdate(PropensityVO vo) { //하우스성향 수정
		// TODO Auto-generated method stub
		return pDAO.propHouseUpdate(vo);
	}

	@Override
	public int houseCheck(String userid) {
		// TODO Auto-generated method stub
		return pDAO.houseCheck(userid);
	}

	@Override
	public int housePnoCheck(String userid) {
		// TODO Auto-generated method stub
		return pDAO.housePnoCheck(userid);
	}

	@Override
	public int proPnoCheck(String userid) {
		// TODO Auto-generated method stub
		return pDAO.proPnoCheck(userid);
	}

//	@Override
//	public int houseInsert2(HouseWriteVO vo) {
//		// TODO Auto-generated method stub
//		return hDAO.houseInsert2(vo);
//	}

	@Override
	public int proHouseCheck(String userid) {
		// TODO Auto-generated method stub
		return pDAO.proHouseCheck(userid);
	}



	

}
