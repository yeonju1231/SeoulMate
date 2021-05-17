package com.seoulmate.home.vo;

public class ListVO {
	private int no; // 글 번호
	private int pno; // 성향 번호
	private String userid; // 아이디
	private String addr; // 주소
	private String housename; // 집 이름
	
	private String housepic1; // 하우스 사진
	private int room; // 방 갯수
	private int bathroom; // 욕실 갯수
	private int nowpeople; // 현재 인원
	
	private int score; // 점수
	
	private int deposit; // 보증금
	private int rent; // 월세
	
	// 메이트 추가
	private String matepic1;
	private int gender;
	private String enterdate;
	private String birth;
	
	private String area="";
	private String aList[]=null;
	
	private String area1;
	private String area2;
	private String area3;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getHousename() {
		return housename;
	}
	public void setHousename(String housename) {
		this.housename = housename;
	}
	public String getHousepic1() {
		return housepic1;
	}
	public void setHousepic1(String housepic1) {
		this.housepic1 = housepic1;
	}
	public int getRoom() {
		return room;
	}
	public void setRoom(int room) {
		this.room = room;
	}
	public int getBathroom() {
		return bathroom;
	}
	public void setBathroom(int bathroom) {
		this.bathroom = bathroom;
	}
	public int getNowpeople() {
		return nowpeople;
	}
	public void setNowpeople(int nowpeople) {
		this.nowpeople = nowpeople;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	public int getRent() {
		return rent;
	}
	public void setRent(int rent) {
		this.rent = rent;
	}
	
	// 메이트 추가
	public String[] getaList() {
		return aList;
	}
	public String getMatepic1() {
		return matepic1;
	}
	public void setMatepic1(String matepic1) {
		this.matepic1 = matepic1;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getEnterdate() {
		return enterdate;
	}
	public void setEnterdate(String enterdate) {
		this.enterdate = enterdate;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public void setaList(String[] aList) {
		this.aList = aList;
	}
	public String getArea() {
		area="";
		if(area1!=null && !area1.equals("")) {
			area+=area1+"/";
		}
		if(area2!=null && !area2.equals("")) {
			area+=area2+"/";
		}
		if(area3!=null && !area3.equals("")) {
			area+=area3;
		}
		return area;
	}
	public void setArea(String area) {
		this.area = area;
		if(area!=null) {
			aList=area.split("/");
		}
	}
	public String getArea1() {
		if(aList!=null && aList.length>=1) {
			area1=aList[0];
		}
		return area1;
	}
	public void setArea1(String area1) {
		this.area1 = area1;
	}
	public String getArea2() {
		if(aList!=null && aList.length>=2) {
			area2=aList[1];
		}
		return area2;
	}
	public void setArea2(String area2) {
		this.area2 = area2;
	}
	public String getArea3() {
		if(aList!=null && aList.length>=3) {
			area3=aList[2];
		}
		return area3;
	}
	public void setArea3(String area3) {
		this.area3 = area3;
	}
}