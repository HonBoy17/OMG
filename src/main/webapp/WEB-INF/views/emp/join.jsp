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
<link rel="stylesheet" href="/resources/css/member.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/resources/js/emp-insert-validation.js"></script>
</head>
<body>
	
	<div class="wrap">
		<section>
			<form id="Form" action="/emp/join" method="post" autocomplete="off">
				<fieldset>
					<ul class="join-box emp-join">
						
						<li>
							<h2 class="title-text">직원정보입력</h2>
						</li>
		
						<li>
							<label for="password"><i class="bi bi-1-circle-fill label-number"></i> 비밀번호 입력</label>
							<input id="password" type="password" name="empPassword" oninput="validatePwd(this,10,16)" required placeholder="초기 비밀번호 지정시 생년월일로 지정" class="inputform">
							<label id="pwdcheckmsg" class="error-text" for="password"></label>
						</li>
				
						<li>
							<label for="name"><i class="bi bi-2-circle-fill label-number"></i> 이름 입력</label>
							<input id="name" type="text" name="empName" oninput="validateName(this,1,5)" required placeholder="실명을 입력해주세요" class="inputform">
							<label id="namecheckmsg" class="error-text" for="name"></label>
						</li>
						
						<li>
							<label for="phone"><i class="bi bi-3-circle-fill label-number"></i> 휴대전화번호 입력</label>
							<input id="phone" type="tel" name="empPhone" oninput="validatePhone(this,11)" required placeholder="'-'는 제외하고 입력해주세요" class="inputform">
							<label id="phonecheckmsg" class="error-text" for="nickname"></label>
						</li>
						
						<li>
							<label for="area"><i class="bi bi-4-circle-fill label-number"></i> 담당 지역 설정</label>
							
							<div class="flexbox">
			                    <input type="radio" name="empArea" id="gangbuk" required value="강북">
			                    <label for="gangbuk">강북</label>
								
								<input type="radio" name="empArea" id="gangnam" required value="강남">
			                    <label for="gangnam">강남</label>
			                    
			                    <input type="radio" name="empArea" id="gangseo" required value="강서">
			                    <label for="gangseo">강서</label>
			
			                    <input type="radio" name="empArea" id="gangdong" required value="강동">
			                    <label for="gangdong">강동</label>
		                    </div>
						</li>
						
						<li>
							<button id="submit" type="submit" disabled="disabled" class="btn btn-default">정보입력</button>
						</li>
						
					</ul>
				</fieldset>
			</form>
		</section>
	</div>
</body>
</html>