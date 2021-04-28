<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/home/css/choi.css"/>
<style>

</style>
<script>
	$(function(){
		// 상단으로 스크롤 이동
		function goTop(){
			$('html').scrollTop(0);
		}
	});
	function mateEditCheck(){
		if(${complete=='complete'}){
			alert("메이트 성향이 수정되었습니다.");
		}
	}
	mateEditCheck();
</script>
<div class="wrap">
	<div class="member_wrap">
		<p class="m_title" id="proTitle">성향 수정</p>
		<div class="title_wrap p_center">
			<p class="s_title s_margin">메이트 성향 수정</p><br/>
			<a class="green s_margin" href="proEditMateForm">메이트 성향 수정</a><br/>
			<p class="s_title s_margin">하우스 성향 수정</p><br/>
			<a class="green s_margin" href="proEditHouseForm">하우스 성향 수정</a><br/>
			<c:if test="${pcase!='m'}">
				<p class="s_title s_margin">메이트 성향 추가</p><br/>
				<a class="green s_margin" href="#">메이트 성향 추가</a><br/>
			</c:if>
		</div>
		
<!-- 		<ul id="proUl"> -->
<!-- 			<!-- c:forEach start -->
<%-- 			<c:forEach var="i" begin="1" end="4"> --%>
<%-- 				<li><a href="memberProEditHouseForm">집 이름 ${i}</a></li> --%>
<%-- 			</c:forEach> --%>
<!-- 			<!-- c:forEach end -->
<!-- 		</ul> -->
	</div>
</div>
</body>
</html>