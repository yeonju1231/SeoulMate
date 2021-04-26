package com.seoulmate.home.vo;

public class PropensityVO {
	private int pno;
	private String userid;
	private String pcase;
	private String housename;
	private int h_noise;
	private int h_pattern;
	private int h_pet;
	private int h_petwith;
	private int h_smoke;
	private int h_mood;
	private int h_communication;
	private int h_party;
	private int h_enter;
	private String h_support;
	private String h_supportArr[];
	private String h_etc;
	private String h_etcArr[];
	
	private int m_pattern;	
	private int m_personality;
	private int m_pet;
	private int m_smoke;
	private int m_age;
	private int m_gender;
	private int m_global;
	private int m_now;
	private String pdate;
	
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
	public String getPcase() {
		return pcase;
	}
	public void setPcase(String pcase) {
		this.pcase = pcase;
	}
	public String getHousename() {
		return housename;
	}
	public void setHousename(String housename) {
		this.housename = housename;
	}
	public int getH_noise() {
		return h_noise;
	}
	public void setH_noise(int h_noise) {
		this.h_noise = h_noise;
	}
	public int getH_pattern() {
		return h_pattern;
	}
	public void setH_pattern(int h_pattern) {
		this.h_pattern = h_pattern;
	}
	public int getH_pet() {
		return h_pet;
	}
	public void setH_pet(int h_pet) {
		this.h_pet = h_pet;
	}
	public int getH_petwith() {
		return h_petwith;
	}
	public void setH_petwith(int h_petwith) {
		this.h_petwith = h_petwith;
	}
	public int getH_smoke() {
		return h_smoke;
	}
	public void setH_smoke(int h_smoke) {
		this.h_smoke = h_smoke;
	}
	public int getH_mood() {
		return h_mood;
	}
	public void setH_mood(int h_mood) {
		this.h_mood = h_mood;
	}
	public int getH_communication() {
		return h_communication;
	}
	public void setH_communication(int h_communication) {
		this.h_communication = h_communication;
	}
	public int getH_party() {
		return h_party;
	}
	public void setH_party(int h_party) {
		this.h_party = h_party;
	}
	public int getH_enter() {
		return h_enter;
	}
	public void setH_enter(int h_enter) {
		this.h_enter = h_enter;
	}
	// 하우스 내 지원 서비스 ///////////////
	public String getH_support() {
		h_support="";
		for(String i:h_supportArr) {
			h_support+=i+"/";
		}
		return h_support;
	}
	public void setH_support(String h_support) {
		this.h_support = h_support;
		h_supportArr=h_support.split("/");
	}
	public String[] getH_supportArr() {
		return h_supportArr;
	}
	public void setH_supportArr(String[] h_supportArr) {
		this.h_supportArr = h_supportArr;
	}
	////////////////////////////////////
	// 기타 /////////////////////////////
	public String getH_etc() {
		h_etc="";
		for(String i:h_etcArr) {
			h_etc+=i+"/";
		}
		return h_etc;
	}
	public void setH_etc(String h_etc) {
		this.h_etc = h_etc;
		h_etcArr=h_etc.split("/");
	}
	public String[] getH_etcArr() {
		return h_etcArr;
	}
	public void setH_etcArr(String[] h_etcArr) {
		this.h_etcArr = h_etcArr;
	}
	////////////////////////////////////
	public int getM_pattern() {
		return m_pattern;
	}
	public void setM_pattern(int m_pattern) {
		this.m_pattern = m_pattern;
	}
	public int getM_personality() {
		return m_personality;
	}
	public void setM_personality(int m_personality) {
		this.m_personality = m_personality;
	}
	public int getM_pet() {
		return m_pet;
	}
	public void setM_pet(int m_pet) {
		this.m_pet = m_pet;
	}
	public int getM_smoke() {
		return m_smoke;
	}
	public void setM_smoke(int m_smoke) {
		this.m_smoke = m_smoke;
	}
	public int getM_age() {
		return m_age;
	}
	public void setM_age(int m_age) {
		this.m_age = m_age;
	}
	public int getM_gender() {
		return m_gender;
	}
	public void setM_gender(int m_gender) {
		this.m_gender = m_gender;
	}
	public int getM_global() {
		return m_global;
	}
	public void setM_global(int m_global) {
		this.m_global = m_global;
	}
	public int getM_now() {
		return m_now;
	}
	public void setM_now(int m_now) {
		this.m_now = m_now;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
}