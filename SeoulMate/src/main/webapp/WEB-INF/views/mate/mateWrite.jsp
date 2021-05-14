<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/housemate.css">
<script>

function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
            $('#mateImg1').attr('src', e.target.result);
        }

      reader.readAsDataURL(input.files[0]);
    }
}

$(function(){
	CKEDITOR.replace("mateProfile"); //설명글 name 설정 필요
	
});	


$(function(){
	
	$("#mNext1").click(function(){
		$("#mateWrite1").css("display", "none");
		$("#mateWrite2").css("display", "block");
	});
	$("#mPrev1").click(function(){
		$("#mateWrite1").css("display", "none");
		$("#mateWrite1").css("display", "block"); //등록form1에서 이전 어디로?
	});
	$("#mIndex1").click(function(){
		location.href="<%=request.getContextPath()%>/mateIndex";
	});
	
	$("#mNext2").click(function(){
		$("#mateWrite2").css("display", "none");
		$("#mateWrite3").css("display", "block");
	});
	$("#mPrev2").click(function(){
		$("#mateWrite2").css("display", "none");
		$("#mateWrite1").css("display", "block"); 
	});
	$("#mIndex2").click(function(){
		location.href="<%=request.getContextPath()%>/mateIndex";
	});
	
	$("#mNext3").click(function(){
		$("#mateWrite3").css("display", "none");
		$("#mateWrite4").css("display", "block");
	});
	$("#mPrev3").click(function(){
		$("#mateWrite3").css("display", "none");
		$("#mateWrite2").css("display", "block"); 
	});
	$("#mIndex3").click(function(){
		location.href="<%=request.getContextPath()%>/mateIndex";
	});
	
	$("#mNext4").click(function(){
		$("#mateWrite4").css("display", "none");
		$("#mateWrite5").css("display", "block");
	});
	$("#mPrev4").click(function(){
		$("#mateWrite4").css("display", "none");
		$("#mateWrite3").css("display", "block"); 
	});
	$("#mIndex4").click(function(){
		location.href="<%=request.getContextPath()%>/mateIndex";
	});
	
	$("#mNext5").click(function(){
		$("#mateWrite5").css("display", "none");
		$("#mateWrite6").css("display", "block");
	});
	$("#mPrev5").click(function(){
		$("#mateWrite5").css("display", "none");
		$("#mateWrite4").css("display", "block"); 
	});
	$("#mIndex5").click(function(){
		location.href="<%=request.getContextPath()%>/mateIndex";
	});
	
	$("#mNext6").click(function(){
		$("#mateWrite6").css("display", "none");
		$("#mateWrite7").css("display", "block"); 
	});
	$("#mPrev6").click(function(){
		$("#mateWrite6").css("display", "none");
		$("#mateWrite5").css("display", "block"); 
	});
	$("#mIndex6").click(function(){
		location.href="<%=request.getContextPath()%>/mateIndex";
	});
	$("#mNext7").click(function(){
		var hopeGender = document.mateFrm.m_gender.value;
		if(hopeGender==${mVO.gender}||hopeGender==2){ //자신과 다른 성별 선택불가
			if(confirm("메이트를 등록하시겠습니까?")){
				$("#mateFrm").submit();
				return true;
			}
		}else if(hopeGender!=${mVO.gender}&&hopeGender!=2){
			alert("희망성별은 자신과 다른 성별을 선택할 수 없습니다.");
			return false;
		}
		location.href="<%=request.getContextPath()%>/mateIndex";
	});
	$("#mPrev7").click(function(){
		$("#mateWrite7").css("display", "none");
		$("#mateWrite6").css("display", "block"); 
	});
	$("#mIndex7").click(function(){
		location.href="<%=request.getContextPath()%>/mateIndex";
	});
	
	
});
</script>
<style>
/* input[type="date"] {width:200px;} */
/* input[type="text"] {width:200px;} */
.content ul li{word-break:keep-all;}
.content label{width:150px; }
/* #mate_date, #mate_area, #mate_rent{width:110px;} */
.form_box{width:800px; margin:0 auto; padding-left:100px;}
.form_box li input, .form_box li select{margin:0px; width:230px;}
.form_box.choice li > label {width: 240px;}
.checks{width:800px;}
.checks>label{width:120px;}
.title_wrap div{min-height: 300px;}
#mateImg1{width:150px; height:107px; }
#matePic1 img{width:150px; height: 150px;}
#mateWrite1 .checks>label{width:130px;}
#mateWrite1 .checks {width: 295px;}
#mate_area{width:150px;}
#area1, #area2, #area3{width:130px; }
/* #mateWrite6{width: 800px;} */
#mateWrite6 .checks>label{width:200px;}
/* #mate_party checks{width:600px;} */
.btnclass{padding-left:50px; padding-top:50px;}
#mateWrite2, #mateWrite3, #mateWrite4, #mateWrite5, #mateWrite6, #mateWrite7 {display:none; }
#mPic{height:125px;}
</style>
<div class="wrap">
<div class="content">
	
	<div class="title_wrap">
	<p class="m_title">메이트 등록하기 </p> 
	<p>&nbsp;</p>
	</div>
	
	<form method="post" id="mateFrm" name="mateFrm" action="mateWriteOk" enctype="multipart/form-data">
	
	<div id="mateWrite1">
	
	<div class="title_wrap">
	<p class="s_title">기본 정보 등록 </p>
	<p>&nbsp;</p>
	</div>
		<input type="hidden" name="pno" value="${pVO.pno }"/>
		
		<ul class="form_box">
			<li><span class="red_txt">*</span><label>월세(관리비)</label> <input type="number" name="rent"/> 
					<div class="checks">
						<input type="radio" id="rent1" name="rent">  <!-- 포함, 미포함 값 어떻게? -->
						<label for="rent1">포함</label>
						<input type="radio" id="rent2" name="rent"> 
						<label for="rent2">미포함</label>
					</div>	</li>	
			<li><span class="red_txt">*</span><label>보증금(조율) </label><input type="number" name="deposit"/> 
					<div class="checks">
						<input type="radio" id="deposit1" name="">  <!-- 포함, 미포함 값 어떻게? -->
						<label for="deposit1">조율 가능</label>
						<input type="radio" id="deposit2" name=""> 
						<label for="deposit2">조율 불가능</label>
					</div>	</li>			
			<li> <label id="mate_area"><span class="red_txt">*</span> 희망 지역 </label>
					<input type="text" name="area" id="area"/> <input type="text" name="area" id="area2"/> <input type="text" name="area" id="area3"/> </li>
			<li> <label><span class="red_txt">*</span>입주가능일 </label><input type="date" name="enterdate" > </li>
			<li> <label><span class="red_txt">*</span>최소 거주 기간</label>
				 	<select name="minStay">
						<option value="1-3개월">1~3 개월</option>
						<option value="4-6개월">4~6 개월</option>
						<option value="7-12개월">7~12 개월</option>
						<option value="1년 이상">1년 이상</option> 
					</select> </li>
			<li> <label><span class="red_txt">*</span>최대 거주 기간</label>
					<select name="maxStay">
						<option value="1-3개월">1~3 개월</option>
						<option value="4-6개월">4~6 개월</option>
						<option value="7-9개월">7~12 개월</option>
						<option value="1년 이상">1년 이상</option>
					</select> </li>
		</ul>
			<div class="btnclass">
				<a id="mPrev1" class="green" >이전</a>
				<a id="mNext1" class="green" >다음</a>
				<a id="mIndex1" class="green" >취소</a>
			</div> <!-- 버튼div 종료 -->
	</div>	<!-- 등록form1 종료 -->
	
		
	<div id="mateWrite2">
	
	<div class="title_wrap">
	<p class="s_title">사진 등록 </p> <!-- 업로드사진1개, 선택하지 않을 경우 기본이미지 중 선택 -->
	<p>&nbsp;</p>
	</div>
	
		<ul class="form_box">
				<li id="mPic"><img id="mateImg1" name="mateImg1" src="#" alt="upload image" style="width:150px; height:107px;"/></li>
				<li> <input type="file" accept="image/*" name="filename" id="matePic1" onchange="readURL(this);"/> <br/> </li>
				<li> <img src="<%=request.getContextPath()%>/img/house/mate01.jfif" name="profilePic2" style="width:150px; height:150px;"/><br/>
					<div class="checks">
						<input type="radio" id="radio31" name="matePic2"> 
						<label for="radio31">기본이미지1</label>
					</div> 
				<img src="<%=request.getContextPath()%>/img/house/mate02.jfif" name="profilePic3" style="width:150px; height:150px;"/>
					<div class="checks">
						<input type="radio" id="radio32" name="matePic3"> 
						<label for="radio32">기본이미지2</label>
					</div> 
				<img src="<%=request.getContextPath()%>/img/house/mate03.jfif" name="" style="width:150px; height:150px;"/>
					<div class="checks">
						<input type="radio" id="radio33" name="matePic4"> 
						<label for="radio33">기본이미지3</label>
					</div> 
			</li>
		</ul>
		<p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> <br/> <br/>
			<div class="btnclass">
				<a id="mPrev2" class="green" >이전</a>
				<a id="mNext2" class="green" >다음</a>
				<a id="mIndex2" class="green" >취소</a>
			</div> <!-- 버튼div 종료 -->
		
	</div> <!-- 등록form2 종료 -->
	
	<div id="mateWrite3"> 
	
	<div class="title_wrap">
	<p class="s_title">내 소개 등록 </p>
	<p>&nbsp;</p>
	</div>
		<textarea name="mateProfile"></textarea><br/>
			<div class="btnclass">
				<a id="mPrev3" class="green" >이전</a>
				<a id="mNext3" class="green" >다음</a>
				<a id="mIndex3" class="green" >취소</a>
			</div> <!-- 버튼div 종료 -->
			
	</div> <!-- 등록form3 종료 -->
	
	<div id="mateWrite4">
		<div class="title_wrap">
		<p class="s_title">선호하는 하우스성향 선택 </p>
		<p>&nbsp;</p>
		</div>	
		<ul class="form_box choice">
				<li>
					<label><span class="red_txt">*</span>생활소음</label>
					<div class="checks">
						<input type="radio" id="h_noise1" value="1" name="h_noise" <c:if test="${pVO.h_noise==1}">checked</c:if>> 
						<label for="h_noise1">매우 조용함</label>
						
						<input type="radio" id="h_noies2" value="2" name="h_noise" <c:if test="${pVO.h_noise==2}">checked</c:if>> 
						<label for="h_noise2">보통</label>
						
						<input type="radio" id="h_noise3" value="3" name="h_noise" <c:if test="${pVO.h_noise==3}">checked</c:if>> 
						<label for="h_noise3">조용하지 않음</label>
					</div>
				</li>
				
				<li>
					<label><span class="red_txt">*</span>생활시간</label>
					<div class="checks">
						<input type="radio" id="h_pattern1" value="1" name="h_pattern" <c:if test="${pVO.h_pattern==1}">checked</c:if> > 
						<label for="h_pattern1">주행성</label>
						
						<input type="radio" id="h_pattern3" value="3" name="h_pattern" <c:if test="${pVO.h_pattern==3}">checked</c:if> > 
						<label for="h_pattern3">야행성</label>
					</div>
				</li>
				
					<li>
					<label><span class="red_txt">*</span>반려동물 여부</label>
					<div class="checks">
						<input type="radio" id="h_pet3" value="3" name="h_pet" <c:if test="${pVO.h_pet==3}">checked</c:if> > 
						<label for="h_pet3">있음</label>	
						
						<input type="radio" id="h_pet1" value="1" name="h_pet" <c:if test="${pVO.h_pet==1}">checked</c:if> > 
						<label for="h_pet1">없음</label>
					</div>
				</li>
				
				<li>
					<label><span class="red_txt">*</span>반려동물 동반 입주 여부</label>
					<div class="checks">
						<input type="radio" id="h_petwith3" value="3" name="h_petwith" <c:if test="${pVO.h_petwith==3}">checked</c:if> > 
						<label for="h_petwith3">가능</label>
						
						<input type="radio" id="h_petwith1" value="1" name="h_petwith" <c:if test="${pVO.h_petwith==1}">checked</c:if> > 
						<label for="h_petwith1">불가능</label>
					</div>
				</li>
				
				<li>
					<label><span class="red_txt">*</span>흡연</label>
					<div class="checks">
						<input type="radio" id="h_smoke1" value="1" name="h_smoke" <c:if test="${pVO.h_smoke==1}">checked</c:if> > 
						<label for="h_smoke1">비흡연</label>
						
						<input type="radio" id="h_smoke2" value="2" name="h_smoke" <c:if test="${pVO.h_smoke==2}">checked</c:if> > 
						<label for="h_smoke2">실외흡연</label>
						
						<input type="radio" id="h_smoke3" value="3" name="h_smoke" <c:if test="${pVO.h_smoke==3}">checked</c:if> > 
						<label for="h_smoke3">실내흡연</label>
					</div>
				</li>
			</ul>
			<div class="btnclass">
				<a id="mPrev4" class="green" >이전</a>
				<a id="mNext4" class="green" >다음</a>
				<a id="mIndex4" class="green" >취소</a>
			</div> <!-- 버튼div 종료 -->
	
	</div> <!-- 등록form4 종료 -->
		
	<div id="mateWrite5">
	
	<div class="title_wrap">
	<p class="s_title">원하는 하우스 성향 등록(소통정보) </p> 
	<p>&nbsp;</p>
	</div>
		<ul class="form_box choice">
			
				<li>
					<label><span class="red_txt">*</span>분위기</label>
					<div class="checks">
						<input type="radio" id="h_mood1" value="1" name="h_mood" <c:if test="${pVO.h_mood==1}">checked</c:if> > 
						<label for="h_mood1">화목함</label>
						
						<input type="radio" id="h_mood2" value="2" name="h_mood" <c:if test="${pVO.h_mood==2}">checked</c:if> > 
						<label for="h_mood2">보통</label>
						
						<input type="radio" id="h_mood3" value="3" name="h_mood" <c:if test="${pVO.h_mood==3}">checked</c:if> > 
						<label for="h_mood3">독립적</label>
					</div>
				</li>
				
					<li>
					<label><span class="red_txt">*</span>소통방식</label>
					<div class="checks">
						<input type="radio" id="h_communication3" value="3" name="h_communication" <c:if test="${pVO.h_communication==3}">checked</c:if> > 
						<label for="h_communication3">대화</label>
						<input type="radio" id="h_communication1" value="1" name="h_communication" <c:if test="${pVO.h_communication==1}">checked</c:if> > 
						<label for="h_communication1">메신저</label>
						<input type="radio" id="h_communication2" value="2" name="h_communication" <c:if test="${pVO.h_communication==2}">checked</c:if> > 
						<label for="h_communication2">기타</label>
					</div>
				</li>
				
					<li>
					<label><span class="red_txt">*</span>모임빈도</label>
					<div class="checks">
						<input type="radio" id="h_party3" value="3" name="h_party" <c:if test="${pVO.h_party==3}">checked</c:if> > 
						<label for="h_party3">자주</label>
						<input type="radio" id="h_party2" value="2" name="h_party" <c:if test="${pVO.h_party==2}">checked</c:if> > 
						<label for="h_party2">가끔</label>
						<input type="radio" id="h_party1" value="1" name="h_party" <c:if test="${pVO.h_party==1}">checked</c:if> > 
						<label for="h_party1">없음</label>
					</div>
				</li>
				
					<li>
					<label><span class="red_txt">*</span>모임참가 의무</label>
					<div class="checks">
						<input type="radio" id="h_enter1" value="1" name="h_enter" <c:if test="${pVO.h_enter==1}">checked</c:if> > 
						<label for="h_enter1">없음</label>
						<input type="radio" id="h_enter2" value="2" name="h_enter" <c:if test="${pVO.h_enter==2}">checked</c:if> > 
						<label for="h_enter2">상관없음</label>
						<input type="radio" id="h_enter3" value="3" name="h_enter" <c:if test="${pVO.h_enter==3}">checked</c:if> > 
						<label for="h_enter3">있음</label>
					</div>
				</li>
			</ul>		
			<div class="btnclass">
				<a id="mPrev5" class="green" >이전</a>
				<a id="mNext5" class="green" >다음</a>
				<a id="mIndex5" class="green" >취소</a>
			</div> <!-- 버튼div 종료 -->

	</div> <!-- 등록form5 종료 -->

	<div id="mateWrite6">
	
	<div class="title_wrap">
	<p class="s_title">원하는 하우스 성향 등록(하우스 지원 정보) </p> 
	<p>&nbsp;</p>
	</div>
		<ul class="form_box choice">
			<li>
			<label><span class="red_txt">*</span>하우스 내 지원서비스</label>
				<div class="checks">
					<input type="checkbox" id="h_support1" value="1" name="h_support" <c:forEach var="i" items="${pVO.h_support}"><c:if test="${i=='1'}">checked</c:if></c:forEach> > 
					<label for="h_support1">공용공간 청소지원</label>
								
					<input type="checkbox" id="h_support2" value="2" name="h_support" <c:forEach var="i" items="${pVO.h_support}"><c:if test="${i=='2'}">checked</c:if></c:forEach> > 
					<label for="h_support2">공용생필품 지원</label> <br/>
								
					<input type="checkbox" id="h_support3" value="3" name="h_support" <c:forEach var="i" items="${pVO.h_support}"><c:if test="${i=='3'}">checked</c:if></c:forEach> > 
					<label for="h_support3">기본 식품 지원</label>
				</div>
			</li> <br/><br/>
		</ul>
			<div class="btnclass">
				<a id="mPrev6" class="green" >이전</a>
				<a id="mNext6" class="green" >다음</a>
				<a id="mIndex6" class="green" >취소</a>
			</div> <!-- 버튼div 종료 -->
	
	</div> <!-- 등록form6 종료 -->		
	
	<div id="mateWrite7">
	
	<div class="title_wrap">
	<p class="s_title">나의 (메이트)성향 선택 </p> <br/>
	<p>&nbsp;</p>
	</div>
		<ul class="form_box choice">
			<li>
				<label><span class="red_txt">*</span>생활 시간</label>
				<div class="checks">
					<input type="radio" id="m_pattern1" value="1" name="m_pattern" <c:if test="${pVO.m_pattern==1}">checked</c:if> > 
					<label for="m_pattern1">주행성</label>
					<input type="radio" id="m_pattern3" value="3" name="m_pattern" <c:if test="${pVO.m_pattern==3}">checked</c:if> > 
					<label for="m_pattern3">야행성</label>
				</div>
			</li>
				
			<li>
				<label><span class="red_txt">*</span>성격</label>
				<div class="checks">
					<input type="radio" id="m_personality1" value="1" name="m_personality" <c:if test="${pVO.m_personality==1}">checked</c:if> > 
					<label for="m_personality1">내향적</label>
					<input type="radio" id="m_personality3" value="3" name="m_personality" <c:if test="${pVO.m_personality==3}">checked</c:if> > 
					<label for="m_personality3">외향적</label>
					<input type="radio" id="m_personality2" value="2" name="m_personality" <c:if test="${pVO.m_personality==2}">checked</c:if> > 
					<label for="m_personality2">상관없음</label>
				</div>
			</li>
			
			<li>
				<label><span class="red_txt">*</span>반려동물 선호도</label>
				<div class="checks">
					<input type="radio" id="m_pet1" value="1" name="m_pet" <c:if test="${pVO.m_pet==1}">checked</c:if> > 
					<label for="m_pet1">긍정적</label>
					<input type="radio" id="m_pet3" value="3" name="m_pet" <c:if test="${pVO.m_pet==3}">checked</c:if> > 
					<label for="m_pet3">부정적</label>
				</div>
			</li>
				
			<li>
				<label><span class="red_txt">*</span>흡연</label>
				<div class="checks">
					<input type="radio" id="m_smoke1" value="1" name="m_smoke" <c:if test="${pVO.m_smoke==1}">checked</c:if> > 
					<label for="m_smoke1">비흡연</label>
					<input type="radio" id="m_smoke3" value="3" name="m_smoke" <c:if test="${pVO.m_smoke==3}">checked</c:if> > 
					<label for="m_smoke3">흡연</label>
					<input type="radio" id="m_smoke2" value="2" name="m_smoke" <c:if test="${pVO.m_smoke==2}">checked</c:if> > 
					<label for="m_smoke2">상관없음</label>
				</div>
			</li>
			
			<li>
				<label><span class="red_txt">*</span>연령대</label>
				<div class="checks">
					<input type="radio" id="m_age1" value="1" name="m_age" <c:if test="${pVO.m_age==1}">checked</c:if> > 
					<label for="m_age1">20~30대</label>
					<input type="radio" id="m_age3" value="3" name="m_age" <c:if test="${pVO.m_age==3}">checked</c:if> > 
					<label for="m_age3">40대 이상</label>
					<input type="radio" id="m_age2" value="2" name="m_age" <c:if test="${pVO.m_age==2}">checked</c:if> > 
					<label for="m_age2">상관없음</label>
				</div>
			</li>	
			
			<li>
				<label><span class="red_txt">*</span>성별</label>
				<div class="checks">
					<input type="radio" id="m_gender1" value="1" name="m_gender" <c:if test="${pVO.m_gender==1}">checked</c:if> > 
					<label for="m_gender1">여성</label>
					<input type="radio" id="m_gender3" value="3" name="m_gender" <c:if test="${pVO.m_gender==3}">checked</c:if> > 
					<label for="m_gender3">남성</label>
					<input type="radio" id="m_gender2" value="2" name="m_gender" <c:if test="${pVO.m_gender==2}">checked</c:if> > 
					<label for="m_gender2">상관없음</label>
				</div>
			</li>	
				
			<li>
				<label><span class="red_txt">*</span>외국인입주 가능여부</label>
				<div class="checks">
					<input type="radio" id="m_global3" value="3" name="m_global" <c:if test="${pVO.m_global==3}">checked</c:if> > 
					<label for="m_global3">가능</label>
					<input type="radio" id="m_global1" value="1" name="m_global" <c:if test="${pVO.m_global==1}">checked</c:if> > 
					<label for="m_global1">불가능</label>
				</div>
			</li>
			
			<li>
				<label><span class="red_txt">*</span>즉시입주 가능여부</label>
				<div class="checks">
					<input type="radio" id="m_now1" value="1" name="m_now" <c:if test="${pVO.m_now==1}">checked</c:if> > 
					<label for="m_now1">가능</label>
					<input type="radio" id="m_now3" value="3" name="m_now" <c:if test="${pVO.m_now==3}">checked</c:if> > 
					<label for="m_now3">불가능</label>
				</div>
			</li>		
		</ul>	
	
			<div class="btnclass">
				<a id="mPrev7" class="green" >이전</a>
				<a id="mNext7" class="green" >등록</a>
			</div> <!-- 버튼div 종료 -->
	</div> <!--  등록form7 종료 --> 
	
	
	</form>
	</div> <!-- content 종료 -->

</div>