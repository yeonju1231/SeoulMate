<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
img{width:250px; height:250px; }
ul, li{float:left;}
#topFrm{height:300px;}
#middleFrm{ background-color:lightpink; width:100%; height:400px;}
#middleFrm>div{float:left;}
#houseExplain{width:65%; height:100%; background-color:lightblue;}
#peopleExplain{width:35%;  background-color:gray;  }
#map_div{background-color:skyblue;}
</style>
<div class="wrap">

<!-- 	<div id="imgSlide"> -->
<!-- 		<ul id="slider"> -->
<%--             <li><img src="<%=request.getContextPath()%>/img/ico_search_black.png" id="img1" title="Seoul Music Festival"/></li> --%>
<%--             <li><img src="<%=request.getContextPath()%>/img/ico_search_black.png" id="img2" title="SIBAC 2109"/></li> --%>
           
<!--          </ul> -->
<!--  	</div>  -->
 
 	<div id="topFrm">
 	등록날짜 2021-04-20 등록
 	<button class="green">수정</button> <button class="green">삭제</button> <button class="green">찜</button> <button class="green">공유하기</button> <button class="green">신고하기</button>
 	<br/>
 	<img src="<%=request.getContextPath()%>/img/ico_search_black.png" id="img1" title="전체외관" >
 	<img src="<%=request.getContextPath()%>/img/ico_filter.png" id="img2" title="거실">
 	<img src="<%=request.getContextPath()%>/img/ico_search_black.png" id="img3" title="방1">
 	
 	</div>
 	
	<hr/>
	
	<div id="middleFrm">
		<div id="houseExplain">
		<p class="s_title">이름 | 성별 | 나이</p> <br/>
		원하는지역1 | 원하는지역2 | 원하는지역3 | 원하는지역4 | 원하는지역5 <br/>
		월세 얼마 | 즉시입주가능 <br/>
		원하는 House 키워드 <br/>
		원하는 집 키워드 보여주기 ~ ~ <br/>
		나의 성향 키워드 <br/>
		나의 성향 키워드 보여주기 ~ ~ <br/>
		내 소개 <br/>
		소개글 불러오기 ~ ~ 
		
		</div> <!-- 방소개 div 종료 -->
		
		<div  id="peopleExplain">
		<ul>
			<li><img style="width:150px; height:150px;" src="<%=request.getContextPath()%>/img/ico_filter.png" id="profilePic1"/> </li>
			<li>응답률 : ㅁㅁ% <br/>
				최근접속 : 1일 전  <br/>
				<button class="green">초대하기</button></li>
		</ul>
		</div> <!-- 프로필 div 종료 -->
	<hr/>
		<div>
		메이트도 매칭률?
		</div> <!-- 매칭률 넣을 div 종료 -->
	</div> <!-- middleFrm div 종료 -->
	

</div>