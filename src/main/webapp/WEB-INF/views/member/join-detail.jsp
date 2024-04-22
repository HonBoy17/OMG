<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OMG</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="/resources/css/admin.css">
<link rel="stylesheet" href="/resources/css/member.css">
<link rel="stylesheet" href="/resources/css/board.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/js/member-validation.js"></script>
</head>
<body>
	<script>
		/*$(function(){
			let id = $('#userId').val();
			if (id === '') {
				alert('기본정보 입력을 먼저 진행해 주세요');
				window.location.href = "/join-intro";
			}
		});*/
	</script>
	<div class="wrap">
		<section>
			<form id="Form" action="/member/join-detail" method="post" autocomplete="off">
				<input id="userId" type="hidden" value="${mbId}" name="mbId">
				<ul class="join-box member-join detail-box">
					
					<li>
						<h2 class="title-text">회원가입</h2>
					</li>
					<li>
						<label for="personal"><i class="bi bi-1-circle-fill label-number"></i> 원하시는 도우미분의 성격을 알려주세요!</label>
						<div class="flexbox">
		                    <input type="radio" name="mbRequestPrsnl" id="careful" value="주의깊은" required>
		                    <label for="careful">주의깊은</label>
		                    
		                    <input type="radio" name="mbRequestPrsnl" id="loving" value="다정한" required>
		                    <label for="loving">다정한 </label>
		                    
		                    <input type="radio" name="mbRequestPrsnl" id="composed" value="차분한" required>
		                    <label for="composed">차분한</label>
		                    
		                    <input type="radio" name="mbRequestPrsnl" id="energetic" value="활기찬" required>
		                    <label for="energetic">활기찬</label>
		                    
		                    <input type="radio" name="mbRequestPrsnl" id="calmful" value="침착한" required>
		                    <label for="calmful">침착한</label>
		                    
		                    <input type="radio" name="mbRequestPrsnl" id="entertaining" value="재미있는" required>
		                    <label for="entertaining">재미있는</label>
		                    
		                    <input type="radio" name="mbRequestPrsnl" id="cozy" value="편안한" required>
		                    <label for="cozy">편안한</label>
		                    
		                    <input type="radio" name="mbRequestPrsnl" id="calmful" value="주의깊은" required>
		                    <label for="calmful">주의깊은</label>
	                    </div>
					</li>
					
					<li>
						<label for="birth"><i class="bi bi-2-circle-fill label-number"></i> 원하시는 도우미 분의 나이대를 알려주세요!</label>
						<div class="flexbox">
		                    <input type="radio" name="mbRequestAge" id="20s" value="20대" required>
		                    <label for="20s">20대</label>
		
		                    <input type="radio" name="mbRequestAge" id="30s" value="30대" required>
		                    <label for="30s">30대</label>
		
		                    <input type="radio" name="mbRequestAge" id="40s" value="40대" required>
		                    <label for="40s">40대</label>
		
		                    <input type="radio" name="mbRequestAge" id="50s" value="50대" required>
		                    <label for="50s">50대</label>
	                   </div>
					</li>
					
					<li>
						<label for="gender"><i class="bi bi-3-circle-fill label-number"></i> 원하시는 도우미분의 성별을 알려주세요!</label>
						<div class="flexbox">
		                    <input type="radio" name="mbRequestGender" id="male" value="남성" required>
		                    <label for="male">남성</label>
		
		                    <input type="radio" name="mbRequestGender" id="female" value="여성" required>
		                    <label for="female">여성</label>
	                   </div>
					</li>
					
					<li>
						<label for="time"><i class="bi bi-4-circle-fill label-number"></i> 방문을 원하시는 시간대를 알려주세요!</label>
						<div class="flexbox">
		                    <input type="radio" name="mbRequestTime" id="morning" value="morning" required>
		                    <label for="morning">오전</label>
		
		                    <input type="radio" name="mbRequestTime" id="afternoon" value="afternoon" required>
		                    <label for="afternoon">오후</label>
		
		                    <input type="radio" name="mbRequestTime" id="nightTime" value="nightTime" required>
		                    <label for="nightTime">야간</label>
	                   </div>
					</li>
					
					<li>
						<label for="caution"><i class="bi bi-3-circle-fill label-number"></i> 주의 사항 입력란</label>
						<textarea id="caution" name="mbCaution" rows="5" placeholder="예) 저는 병원에서 처방 받은 약을 매일 챙겨먹어야 합니다.&#10;" class="inputform textArea"></textarea>
					</li>
					
					<li>
						<button id="submit" type="submit" class="btn btn-submit">회원가입</button>
					</li>
				</ul>
			</form>
		</section>
	</div>
</body>
</html>