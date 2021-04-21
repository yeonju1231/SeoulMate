package com.seoulmate.home.member;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Autowired
	SqlSession sqlSession;
	
	
	@RequestMapping("/idCheck")
	public ModelAndView idCheck(String userid) {
		String useridCheck=userid;
		MemberDAOImp dao=sqlSession.getMapper(MemberDAOImp.class);
		
		int result=dao.idCheck(useridCheck);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("userid", useridCheck);
		mav.addObject("checkResult", result);
		mav.setViewName("member/idCheck");
		
		return mav;
	}
	
	@RequestMapping(value="/memberOk", method=RequestMethod.POST)
	public ModelAndView memberOk(MemberVO vo, HttpSession session) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("home");
		
		// session.setAttribute("logId", vo.getUserid());
		System.out.println("아이디 : "+vo.getUserid());
		System.out.println("비밀번호 : "+vo.getUserpwd());
		System.out.println("이름 : "+vo.getUsername());
		System.out.println("연락처 전체 : "+vo.getTel());
		System.out.println("연락처1 : "+vo.getTel1());
		System.out.println("연락처2 : "+vo.getTel2());
		System.out.println("연락처3 : "+vo.getTel3());
		System.out.println("생년월일 : "+vo.getBirth());
		System.out.println("년 : "+vo.getBirth1());
		System.out.println("월 : "+vo.getBirth2());
		System.out.println("일 : "+vo.getBirth3());
		System.out.println("희망지역 전체 : "+vo.getArea());
		System.out.println("희망1 : "+vo.getArea1());
		System.out.println("희망2 : "+vo.getArea2());
		System.out.println("희망3 : "+vo.getArea3());
		System.out.println("이메일 전체 : "+vo.getEmail());
		System.out.println("이메일 아이디 : "+vo.getEmailid());
		System.out.println("이메일 도메인 : "+vo.getEmaildomain());
		
		session.setAttribute("logId", "yunyun");
		
		return mav;
	}
	@RequestMapping("/memberEdit")
	public String memberEdit() {
		
		return "member/memberEdit";
	}
	
	@RequestMapping(value="/memberEditForm", method=RequestMethod.POST)
	public ModelAndView memberEditForm(String userpwd, HttpSession session) {
		ModelAndView mav=new ModelAndView();
		
		String arr1[] = {"010"," 02"," 031","032"," 033"," 041"," 042"," 043"," 044"," 051"," 052"," 053"," 054"," 055"," 061"," 062"," 063"," 064"};
		
		mav.addObject("arr1", arr1);
		mav.addObject("pwd", userpwd);
		
		MemberDAOImp dao=sqlSession.getMapper(MemberDAOImp.class);
		MemberVO vo=new MemberVO();
		vo=dao.memberSelect((String)session.getAttribute("logId"));
		
		mav.addObject("vo", dao.memberSelect((String)session.getAttribute("logId")));
		
		mav.setViewName("member/memberEditForm");
		
		return mav;
	}
	
	@RequestMapping("/memberExit")
	public String memberExit() {
		
		return "member/memberExit";
	}
	
	@RequestMapping("/memberExitOk")
	public String memberExitOk() {
		
		return "home";
	}
	
	@RequestMapping("/memberProEdit")
	public String memberProEdit() {
		
		return "member/memberProEdit";
	}
	
	@RequestMapping("/memberProEditForm")
	public ModelAndView memberProEditForm() {
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("no1", "no1");
		mav.setViewName("member/memberProEditForm");
		
		return mav;
	}
	
	@RequestMapping("/proInsertOk")
	public String proInsertOk() {
		return "home";
	}
	
	@RequestMapping("/sample")
	public String sample() {
		return "member/sample";
	}
	
}
