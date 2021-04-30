package com.seoulmate.home.vo;

public class PayVO {
	private int no;				//paysq
	private String userid;		
	private String username;
	private String imp_uid;		// 고유 결제 아이디
	private String merchant_uid; // 주문번호 
	private int amount;	//결제완료된 금액
	private String payStart;	//결제일 
	private String payEnd;		//결제 종료일 (결제일로부터 한달) 
	private String payMethod; 	//결제수단 
	private String refund; 		// 환불날짜 (null) 
	
	private int payMonth; //결제 체크한 개월수 
	
	private String selectYearMonthDate; // 년, 월, 일 선택 
	private String selectStartDate;  //보여줄 기간 선택    2021.02 ~ 2021.03 까지 만 출력.. 이런거처럼 
	private String selectEndDate;	//보여줄 기간 선택 

	private String searchKey; 	//검색키
	private String searchWord;  //검색어
	
	// 페이징 
	private int nowPageNum = 1; //현재 페이지 
	private int onePageNum = 4; //페이징 개수
	private int onePageRecode = 10; //한페이지당 레코드 수
	private int totalRecode; // 총 레코드 수
	private int totalPage; // 마지막페이지, 총 페이지 수 
	private int startPageNum = 1; //시작 페이지
	private int lastPageRecode = 10; //마지막페이지의 남은 레코드 수
	
	//해당 유저의 grade 
	private int grade;
	
	public String getSelectStartDate() {
		return selectStartDate;
	}
	public void setSelectStartDate(String selectStartDate) {
		this.selectStartDate = selectStartDate;
	}
	public String getSelectEndDate() {
		return selectEndDate;
	}
	public void setSelectEndDate(String selectEndDate) {
		this.selectEndDate = selectEndDate;
	}
	public String getSelectYearMonthDate() {
		return selectYearMonthDate;
	}
	public void setSelectYearMonthDate(String selectYearMonthDate) {
		this.selectYearMonthDate = selectYearMonthDate;
	}
	public int getNowPageNum() {
		return nowPageNum;
	}
	public void setNowPageNum(int nowPageNum) {
		this.nowPageNum = nowPageNum;
		//시작페이지 번호 계산
		startPageNum = ((nowPageNum-1) / onePageNum * onePageNum)+1;
	}
	public int getOnePageNum() {
		return onePageNum;
	}
	public void setOnePageNum(int onePageNum) {
		this.onePageNum = onePageNum;
	}
	public int getOnePageRecode() {
		return onePageRecode;
	}
	public void setOnePageRecode(int onePageRecode) {
		this.onePageRecode = onePageRecode;
	}
	public int getTotalRecode() {
		return totalRecode;
	}
	public void setTotalRecode(int totalRecode) {
		this.totalRecode = totalRecode;
		//총 페이지수 계산
		totalPage = (int)Math.ceil(totalRecode/(double)onePageRecode);
		//마지막 페이지에 레코드 수 
		if(totalRecode%onePageRecode == 0) {
			lastPageRecode = onePageRecode;
		}else {
			lastPageRecode = totalRecode%onePageRecode; 
		}
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartPageNum() {
		return startPageNum;
	}
	public void setStartPageNum(int startPageNum) {
		this.startPageNum = startPageNum;
	}
	public int getLastPageRecode() {
		return lastPageRecode;
	}
	public void setLastPageRecode(int lastPageRecode) {
		this.lastPageRecode = lastPageRecode;
	}
	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public String getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPayStart() {
		return payStart;
	}
	public void setPayStart(String payStart) {
		this.payStart = payStart;
	}
	public String getPayEnd() {
		return payEnd;
	}
	public void setPayEnd(String payEnd) {
		this.payEnd = payEnd;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public String getRefund() {
		return refund;
	}
	public void setRefund(String refund) {
		this.refund = refund;
	}
	public int getPayMonth() {
		return payMonth;
	}
	public void setPayMonth(int payMonth) {
		this.payMonth = payMonth;
	}
	
}
