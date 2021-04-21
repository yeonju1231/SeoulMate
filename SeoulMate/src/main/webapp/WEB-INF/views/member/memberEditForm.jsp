<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/home/css/choi.css"/>
<div class="wrap">
	
	<div class="title_wrap editDiv">
		<p class="s_title">회원정보 수정</p>
	</div>
	<form method="post" id="memId" action="memberOk">
		<div id="memEditDiv">
			<ul class="form_box choice" id="mem">
				<li><label>아이디</label>
					<input type="text" name="userid" id="editUserid" value="${vo.userid}" disabled/>
				</li>
					<li><label>비밀번호</label>
				<input type="password" name="userpwd" id="editUserpwd" value="${vo.userpwd}"/></li>
					<li><label>비밀번호 확인</label>
				<input type="password" name="userpwd2" id="editUserpwd2" value=""/></li>
				<li><label>이름</label>
					<input type="text" name="username" id="editUsername" value="${vo.username}" disabled/></li>
				<li><label>연락처</label>
					<select name="tel1" id="tel1">
						<c:forEach var="i1" items="${arr1}">
							<option value="${i1}">${i1}</option>
						</c:forEach>
					</select><span class="multi">-</span>
					<input type="text" name="tel2" id="tel2" value="${vo.tel2}"/><span class="multi">-</span>
					<input type="text" name="tel3" id="tel3" value="${vo.tel3}"/>
				</li>
				<li><label>생년월일</label>
					<input type="text" name="birth1" id="editBirth1" value="${vo.birth1}" disabled/><span>년</span> 
					<input type="text" name="birth2" id="birth2" value="${vo.birth2}" disabled/><span>월</span>
					<input type="text" name="birth3" id="birth3" value="${vo.birth3}" disabled/><span>일</span>
				</li>
				<li><label>성별</label>
					<div class="checks">
						<input type="radio" name="gender" id="gender1" value="1" <c:if test="${vo.gender==1}">checked</c:if> disabled/>
						<label for="gender1">여성</label>
						<input type="radio" name="gender" id="gender2" value="2" <c:if test="${vo.gender==2}">checked</c:if> disabled/>
						<label for="gender2">남성</label>
					</div>
				</li>
				<li><label>희망 지역(최대 3곳)</label>
					<input type="text" name="area1" id="editArea1" value="${vo.area1}"/>
					<input type="text" name="area2" id="editArea2" value="${vo.area2}"/>
					<input type="text" name="area3" id="editArea3" value="${vo.area3}"/>
				</li>
				<li><label>이메일</label>
					<input type="text" name="emailid" id="emailid" value="${vo.emailid}" placeholder="이메일"/><span>@</span> 
					<select name="emaildomain" id="emaildomain">
						<option value="naver.com" <c:if test="${vo.emaildomain=='naver.com'}">selected</c:if>>naver.com</option>
						<option value="nate.com" <c:if test="${vo.emaildomain=='nate.com'}">selected</c:if>>nate.com</option>
						<option value="hanmail.net" <c:if test="${vo.emaildomain=='hanmail.net'}">selected</c:if>>hamail.net</option>
						<option value="gmail.com" <c:if test="${vo.emaildomain=='gmail.com'}">selected</c:if>>gmail.com</option>
					</select>
					<a class="green" id="emailBtn">인증번호 전송</a>
				</li>
				<li>
					<label></label>
					<input type="text" name="emailCheck" id="emailCheck" value="" placeholder="인증번호를 입력해주세요"/>
					<a class="green" id="emailCheckBtn">인증번호 확인</a>
				</li>
				<li>
					<button class="q_btn green" id="memNext1">회원정보 수정</button>
				</li>
			</ul>
			
		</div>
	</form>
</div>
</body>
</html>