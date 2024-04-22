<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

	<script>
		$(function(){
			
			var total = $('#total').val();
			
			// 회원 성비 분포 
			var menCnt = $('#menCnt').val();
			var womenCnt = $('#womenCnt').val();
			
			$('#men-result-text').text(Math.round(menCnt / total * 100));
			$('#women-result-text').text(Math.round(womenCnt / total * 100));
			
			// 회원 나이대 분포
			var age30s = $('#menCnt').val();
			var age40s = $('#menCnt').val();
			var age50s = $('#menCnt').val();
			var age60s = $('#menCnt').val();
			var age70s = $('#menCnt').val();
			var age80s = $('#menCnt').val();
			
			$('#age30s-result-text').text(Math.round(age30s / total * 100));
			$('#age40s-result-text').text(Math.round(age40s / total * 100));
			$('#age50s-result-text').text(Math.round(age50s / total * 100));
			$('#age60s-result-text').text(Math.round(age60s / total * 100));
			$('#age70s-result-text').text(Math.round(age70s / total * 100));
			$('#age80s-result-text').text(Math.round(age80s / total * 100));

		});
		
		
			
	</script>

	<div class="wrap">
		<h2 class="content-header">
       		<i class="bi bi-person-lines-fill"></i><span class="title"> 사용자 이용 현황</span>
       	</h2>
       	
       	<section>
       		<div class="banner admin-banner">
       			<h3 class="title"><i class="bi bi-list-task"></i> 전체 회원 정보</h3>
       			<table class="table tb-member">
				<thead>
					<tr>
						<th>아이디</th>
						<th>이 름</th>
						<th>닉네임</th>
					</tr>
				</thead>
				
				<tbody id="member-table">
				<c:forEach items="${mList}" var="mvo">
				<!-- items 속성값에는 Controller에서 반환한 List(mList)를 '표현식'으로 작성한다. -->
				<!-- 반환된 List에 있는 MemberVO 객체는 var 속성값에 지정한 변수로 하나씩 저장된다. -->
					<tr>
						<td><a href="/member/datapage?id=${mvo.id}">${mvo.id}</a></td>
						<td>${mvo.name}</td>
						<td>${mvo.nickname}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
       		</div>
       	</section>
       	
       	<section>
       		<div class="banner admin-banner">
       			<h3 class="title"><i class="bi bi-gender-ambiguous"></i> 회원 성별 분석</h3>
       			<ul>
       				<li>
       					<p class="gender-info">총인원 : ${mtotal} <i class="bi bi-person-standing"></i> 남성인원 : ${menCnt} <i class="bi bi-person-standing-dress"></i> 여성인원 : ${womenCnt}</p>
       					<progress id="menCnt" max="${mtotal}" value="${menCnt}" class="progress"></progress>
						<progress id="womenCnt" max="${mtotal}" value="${womenCnt}" class="progress"></progress>
						
						<input type="hidden" id="total" value="${mtotal}">
						<div class="men-result"><strong id="men-result-text"></strong> <strong>%</strong></div>
						<div class="women-result"><strong id="women-result-text"></strong> <strong>%</strong></div>
       				</li>
       			</ul>
       		</div>
       	</section>
       	<section>
       		<div class="banner admin-banner">
       			<h3 class="title"><i class="bi bi-123"></i> 회원 나이대 분포</h3>
       			<p class="gender-info">총인원 : ${mtotal}</p>
				<progress id="age30s" max="${mtotal}" value="${age30s}" class="progress"></progress>
				<progress id="age40s" max="${mtotal}" value="${age40s}" class="progress"></progress>
				<progress id="age50s" max="${mtotal}" value="${age50s}" class="progress"></progress>
				<progress id="age60s" max="${mtotal}" value="${age60s}" class="progress"></progress>
				<progress id="age70s" max="${mtotal}" value="${age70s}" class="progress"></progress>
				<progress id="age80s" max="${mtotal}" value="${age80s}" class="progress"></progress>
				
				<input type="hidden" id="total" value="${mtotal}">
				<div class="age30s-result"><strong id="age30s-result-text"></strong> <strong>%</strong></div>
				<div class="age40s-result"><strong id="age40s-result-text"></strong> <strong>%</strong></div>
				<div class="age50s-result"><strong id="age50s-result-text"></strong> <strong>%</strong></div>
				<div class="age60s-result"><strong id="age60s-result-text"></strong> <strong>%</strong></div>
				<div class="age70s-result"><strong id="age70s-result-text"></strong> <strong>%</strong></div>
				<div class="age80s-result"><strong id="age80s-result-text"></strong> <strong>%</strong></div>
       		</div>
       	</section>
       	
	</div>
	
<%@ include file="../includes/footer.jsp" %>



















    