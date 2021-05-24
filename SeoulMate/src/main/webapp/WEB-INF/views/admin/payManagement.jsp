<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="//cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script><!-- jQuery CDN --->

<style>
.nowPageNum{background-color: #ddd;}
</style>
		<section class="admin_Section">
			<div class="admin_Content">
				<div class="m_title managementTitle">결제 관리</div>
				<form method="post" action="/home/admin/payManagement" name="payManagementForm" id="payManagementForm" class="management_SearchForm">
					<input type="hidden" name="orderCondition" value="${payVO.orderCondition}"/>
					<input type="hidden" name="orderUpDown" value="${payVO.orderUpDown}"/>
					<div class="managementSearchForm">
						<div class="managementSearch" id="payManagementSearch">
							<div class="managementDatePicker" id="payManageMentDatePicker">
								<div class="dateChoose">
									<span class="managementSpan3">기간 선택</span>
									<select name="selectYearMonthDate" id="selectYearMonthDate" class="custom-select">
										<option value="일별"  <c:if test="${payVO.selectYearMonthDate==null || payVO.selectYearMonthDate=='일별' }">selected</c:if>>일별</option>
										<option value="월별" <c:if test="${payVO.selectYearMonthDate=='월별' }">selected</c:if>>월별</option>
										<option value="년별" <c:if test="${payVO.selectYearMonthDate=='년별' }">selected</c:if>>년별</option>
									</select>
								</div>
								<div class="selectDateChoose">
									<c:if test="${payVO.selectYearMonthDate==null || payVO.selectYearMonthDate=='일별' }">
										<input type="date" name="selectStartDate" <c:if test="${payVO.selectStartDate != null && payVO.selectStartDate != ''}">value="${payVO.selectStartDate}"</c:if>/>
										<input type="date" name="selectEndDate" <c:if test="${payVO.selectEndDate != null && payVO.selectEndDate != ''}">value="${payVO.selectEndDate}"</c:if>/>
									</c:if>
									<c:if test="${payVO.selectYearMonthDate=='월별'}">
										<input type="month" name="selectStartDate" <c:if test="${payVO.selectStartDate != null && payVO.selectStartDate != ''}">value="${payVO.selectStartDate}"</c:if>/>
										<input type="month" name="selectEndDate"  <c:if test="${payVO.selectEndDate != null && payVO.selectEndDate != ''}">value="${payVO.selectEndDate}"</c:if>/>
									</c:if>
									<c:if test="${payVO.selectYearMonthDate=='년별' }">
										<input type="month" name="selectStartDate" <c:if test="${payVO.selectStartDate != null && payVO.selectStartDate != ''}">value="${payVO.selectStartDate}-01"</c:if>/>
										<input type="month" name="selectEndDate"  <c:if test="${payVO.selectEndDate != null && payVO.selectEndDate != ''}">value="${payVO.selectEndDate}-12"</c:if>/>
									</c:if>
								</div>
							</div>
							<div id="paySearchDiv">
								<select name="searchKey" id="searchKey" class="custom-select">
									<option value="userid" <c:if test="${pagingVO.searchKey==null || pagingVO.searchKey=='userid' }">selected</c:if>>아이디</option>
									<option value="username" <c:if test="${pagingVO.searchKey=='username' }">selected</c:if>>이름</option>
								</select>
								<input type="hidden" name="pageNum" id="hiddenPageNum" value="${pagingVO.pageNum}"/>
								<input type="text" name="searchWord" class="form-control" value=<c:if test="${pagingVO.searchWord!=null }">"${pagingVO.searchWord}"</c:if><c:if test="${pagingVO.searchWord==null }">""</c:if> />
								<input type="submit" value="Search" class="btn btn-custom" id="managementSearch_submit"/>
							</div>
							<div id="payBtnDiv">
								<a href="javascript:printPage('payExcel')" id="excelBtn" class="btn btn-custom">엑셀</a>
								<a href="javascript:printPage('pay')" class="btn btn-custom" id="printBtn">프린트</a>
							</div>
						</div>	
					</div>	
				</form>
				<div class="table-responsive, managementList">
					<table class="table table-hover table-sm table-bordered, managementTable" id="adminPayManagementTable">
						<thead class="thead-light">
							<tr class="orderConditionTable">
								<th style="cursor:pointer;">결제번호
								<c:if test="${payVO.orderCondition=='no' && payVO.orderUpDown=='desc'}"><span>▼</span></c:if>
								<c:if test="${payVO.orderCondition=='no' && payVO.orderUpDown=='asc'}"><span>▲</span></c:if>
								</th>
								<th>아이디</th>
								<th>이름</th>
								<th style="cursor:pointer;">결제일
								<c:if test="${payVO.orderCondition=='payStart' && payVO.orderUpDown=='desc'}"><span>▼</span></c:if>
								<c:if test="${payVO.orderCondition=='payStart' && payVO.orderUpDown=='asc'}"><span>▲</span></c:if>
								</th>
								<th style="cursor:pointer;">결제종료일
								<c:if test="${payVO.orderCondition=='payEnd' && payVO.orderUpDown=='desc'}"><span>▼</span></c:if>
								<c:if test="${payVO.orderCondition=='payEnd' && payVO.orderUpDown=='asc'}"><span>▲</span></c:if>
								</th>
								<th>결제방법</th>
								<th>등급</th>
								<th>환불</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${payList}">
							<tr class="admin_List_table">
								<td>${vo.no }</td>
								<td>${vo.userid }</td>
								<td>${vo.username }</td>
								<td>${vo.payStart }</td>
								<td>${vo.payEnd }</td>
								<td>${vo.payMethod }</td>
								<td><c:if test="${vo.grade==1}">일반</c:if><c:if test="${vo.grade==2}">프리미엄</c:if></td>
								<td>
									<c:if test="${vo.refund==null }">
									<input type="button" value="환불" name="cancelPay" class="btn btn-outline-secondary btn-sm cancelPay"/>
									</c:if>
									<input type="hidden" name="merchant_uid" value="${vo.merchant_uid }"/>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="paging" id="adminPayManagementPaging">
						<c:if test="${pagingVO.pageNum>1 }">
							<a href="javascript:pageClick('first_page')" class="first_page"></a>
							<a href="javascript:pageClick('prev_page')"  class="prev_page"></a>
						</c:if>
						<c:if test="${pagingVO.pageNum==1 }">
							<a href="#" class="first_page"></a>
							<a href="#"  class="prev_page"></a>
						</c:if>
						<c:forEach var="pageNum" begin="${pagingVO.startPageNum }" end="${pagingVO.startPageNum + pagingVO.onePageNum-1 }">
							<c:if test="${pageNum<=pagingVO.totalPage }">
								<c:if test="${pageNum==pagingVO.pageNum }">
									<a href="javascript:pageClick('${pageNum }')" class="nowPageNum">${pageNum }</a>
								</c:if>
								<c:if test="${pageNum!=pagingVO.pageNum }">
									<a href="javascript:pageClick('${pageNum }')">${pageNum }</a>
								</c:if>
							</c:if>
						</c:forEach>
						<c:if test="${pagingVO.pageNum < pagingVO.totalPage }">
							<a href="javascript:pageClick('next_page')" class="next_page"></a>
							<a href="javascript:pageClick('last_page')" class="last_page"></a>
						</c:if>
						<c:if test="${pagingVO.pageNum == pagingVO.totalPage }">
							<a href="#" class="next_page"></a>
							<a href="#" class="last_page"></a>
						</c:if>
					</div>
				</div>
			</div>
		</section>
	</body>
	<script>
		$(function(){
			//환불 요청 .. 
			$(document).on('click','.cancelPay', function(){
				var merchant_uid = $(this).parent().children().eq(1).val();
				console.log(merchant_uid);
// 				$.ajax({
// 					"url": "http://www.myservice.com/payments/cancel",
// 					"type": "POST",
// 					"contentType": "application/json",
// 					"data": JSON.stringify({
// 					"merchant_uid": "mid_" + new Date().getTime(), // 주문번호
// 					"cancel_request_amount": 2000, // 환불금액
// 					"reason": "테스트 결제 환불" // 환불사유
// 					"refund_holder": "홍길동", // [가상계좌 환불시 필수입력] 환불 수령계좌 예금주
// 					"refund_bank": "88" // [가상계좌 환불시 필수입력] 환불 수령계좌 은행코드(ex. KG이니시스의 경우 신한은행은 88번)
// 					"refund_account": "56211105948400" // [가상계좌 환불시 필수입력] 환불 수령계좌 번호
// 		        }),
// 					"dataType": "json"
// 		      });
			});
			// searchWord에 마우스클릭하면 value 지워주기 
			$(document).on('click','input[name=searchWord]', function(){
				$(this).val('');
			});
			// 결제번호,결제일, 결제종료일 오름차순, 내림차순 클릭 시
			$('.orderConditionTable>th').on('click', function(){
				
				if($(this).text().indexOf('결제번호') != -1){
					if($('input[name=orderCondition]').val()=='no'){
						$('input[name=orderUpDown]').attr('value','asc');
					}else{
						$('input[name=orderCondition]').attr('value','no');
						$('input[name=orderUpDown]').attr('value','desc');
					}
				}
				if($(this).text().indexOf('결제일') != -1){
					if($('input[name=orderCondition]').val()=='payStart'){
						$('input[name=orderUpDown]').attr('value','asc');
					}else{
						$('input[name=orderCondition]').attr('value','payStart');
						$('input[name=orderUpDown]').attr('value','desc');
					}
				}
				if($(this).text().indexOf('결제종료일') != -1){
					if($('input[name=orderCondition]').val()=='payEnd'){;
						$('input[name=orderUpDown]').attr('value','asc');
					}else{
						$('input[name=orderCondition]').attr('value','payEnd');
						$('input[name=orderUpDown]').attr('value','desc');
					}
				}
				$('#payManagementForm').submit();
			});
		});
	</script>
</html>