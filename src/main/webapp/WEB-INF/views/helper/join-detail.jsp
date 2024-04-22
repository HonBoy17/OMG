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
<script src="/resources/js/helper-validation.js"></script>
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
		<form id="Form" action="/helper/join-detail" method="post" autocomplete="off">
			<fieldset>
				<input id="userId" type="hidden" name="hpId" value="${hpId}">
				<ul class="join-box helper-join">
					
					<li>
						<h2 class="title-text">헬퍼인재채용</h2>
					</li>
					<li>
						<label for="category"><i class="bi bi-1-circle-fill label-number"></i> 어떤 유형의 도우미이신가요?</label>
						<div class="gender-box">
							<input id="recovery" type="radio" name="hpType" value="재활치료사" required>
							<label for="recovery">재활치료사</label>
							<input id="care-worker" type="radio" name="hpType" value="요양보호사" required>
							<label for="care-worker">요양보호사</label>
						</div>
					</li>
					<li>
						<label for="area"><i class="bi bi-2-circle-fill label-number"></i> 활동하고자 하는 지역을 알려주세요!</label>
						<div class="flexbox">
		                    <input type="radio" name="hpArea" id="gangbuk" value="A1" required>
		                    <label for="gangbuk">강북</label>
							
							<input type="radio" name="hpArea" id="gangnam" value="A2" required>
		                    <label for="gangnam">강남</label>
		                    
		                    <input type="radio" name="hpArea" id="gangseo" value="A3" required>
		                    <label for="gangseo">강서</label>
		
		                    <input type="radio" name="hpArea" id="gangdong" value="A4" required>
		                    <label for="gangdong">강동</label>
		                    
		                    <input type="radio" name="hpArea" id="gyeonggibukbu" value="B1" required>
		                    <label for="gyeonggibukbu">경기북부</label>
		                    
		                    <input type="radio" name="hpArea" id="gyeongginambu" value="B2" required>
		                    <label for="gyeongginambu">경기남부</label>
	                    </div>
					</li>
					<li>
						<label for="prsnl"><i class="bi bi-3-circle-fill label-number"></i> 성향이 어떻게 되시나요?</label>
						<div class="flexbox">
							<input type="radio" name="hpPrsnl" id="careful" value="주의깊은" required>
		                    <label for="careful">주의깊은</label>
		                    
		                    <input type="radio" name="hpPrsnl" id="loving" value="다정한" required>
		                    <label for="loving">다정한 </label>
		                    
		                    <input type="radio" name="hpPrsnl" id="composed" value="차분한" required>
		                    <label for="composed">차분한</label>
		                    
		                    <input type="radio" name="hpPrsnl" id="energetic" value="활기찬" required>
		                    <label for="energetic">활기찬</label>
		                    
		                    <input type="radio" name="hpPrsnl" id="calmful" value="침착한" required>
		                    <label for="calmful">침착한</label>
		                    
		                    <input type="radio" name="hpPrsnl" id="entertaining" value="재미있는" required>
		                    <label for="entertaining">재미있는</label>
		                    
		                    <input type="radio" name="hpPrsnl" id="cozy" value="편안한" required>
		                    <label for="cozy">편안한</label>
		                    
		                    <input type="radio" name="hpPrsnl" id="calmful" value="주의깊은" required>
		                    <label for="calmful">주의깊은</label>
						</div>
					</li>
					<li>
						<label for="haveVehicle"><i class="bi bi-4-circle-fill label-number"></i>차량을 소지하고 계신가요?</label>
						<div class="flexbox">
							<input type="radio" name="hpVehicle" id="yes" value="O" required>
			                <label for="yes">차량을 소지하고 있음</label>
			                
			                <input type="radio" name="hpVehicle" id="no" value="X" required>
			                <label for="no">차량을 소지하고 있지않음</label>
		                </div>
					</li>
					<li>
						<label for="haveVehicle"><i class="bi bi-5-circle-fill label-number"></i>최종학력을 알려주세요!</label>
						<div class="flexbox">
							<input type="radio" name="hpFnlEdu" id="highSchoolGraduate" value="고졸" required>
			                <label for="highSchoolGraduate">고등학교 졸업</label>
			                
			                <input type="radio" name="hpFnlEdu" id="universityGraduate" value="대졸" required>
			                <label for="universityGraduate">대학교 졸업</label>
		                </div>
					</li>
					<li>
						<label for="career"><i class="bi bi-6-circle-fill label-number"></i> 경력 입력</label>
						<input id="career" type="text" name="hpCareer" class="inputform">
					</li>
					
					<li>
						<label for="certicipate"><i class="bi bi-7-circle-fill label-number"></i> 경력 입력</label>
						<input id="certicipate" type="file" name="hpCerticipate" class="inputform">
						<div class="uploadResult">
							<ul></ul>
						</div>
					</li>
					
					<li>
						<button id="submit" type="submit" class="btn btn-submit-helper">다음</button>
					</li>
				</ul>
			</fieldset>
		</form>

	</section>
	</div>
</body>
</html>