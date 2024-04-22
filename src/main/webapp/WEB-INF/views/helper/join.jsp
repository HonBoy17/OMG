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
<script src="/resources/js/join-validation-helper.js"></script>
</head>
<body>
	<div class="wrap">
		<section>
		<form id="Form" action="/helper/join" method="post" autocomplete="off">
			<fieldset>
				<ul class="join-box helper-join">
				
					<li>
						<h2 class="title-text">헬퍼인재채용</h2>
					</li>
					
					<li>
						<label for="id"><i class="bi bi-1-circle-fill label-number"></i> 아이디를 입력해주세요!</label>
						<input id="id" type="text" name="hpId" oninput="validateId(this,5,19)" placeholder="6자리 이상의 영문 혹은 숫자를 조합하여 입력해주세요" class="inputform" autofocus required>
						<label id="idcheckmsg" class="error-text" for="id"></label>
					</li>
	
					<li>
						<label for="password"><i class="bi bi-2-circle-fill label-number"></i> 비밀번호를 입력해주세요!</label>
						<input id="password" type="password" name="hpPassword" oninput="validatePwd(this,5,21)" placeholder="대소문자,특수문자, 숫자 중 3개 이상을 조합하여 8자리 이상 입력해주세요" class="inputform" required>
						<label id="pwdcheckmsg" class="error-text" for="password"></label>
					</li>
			
					<li>
						<label for="name"><i class="bi bi-3-circle-fill label-number"></i> 이름을 알려주세요!</label>
						<input id="name" type="text" name="hpName" oninput="validateName(this,1,21)" placeholder="실명을 입력해주세요" class="inputform" required>
						<label id="namecheckmsg" class="error-text" for="password"></label>
					</li>
					
						
					<li>
						<label for="nickname"><i class="bi bi-4-circle-fill label-number"></i> 뭐라고 불러드릴까요?</label>
						<input id="nickname" type="text" name="hpNickname" oninput="validateNickname(this,2,10)" placeholder="특수문자는 제외해서 입력해주세요" class="inputform" required>
						<label id="nickcheckmsg" class="error-text" for="nickname"></label>
					</li>
					
					<li>
						<label for="birth"><i class="bi bi-5-circle-fill label-number"></i>  나이를 알려주세요!</label>
						
						<div class="flexbox">
		                    <input type="radio" name="hpAge" id="30s" value="30대" required>
		                    <label for="30s">30대</label>
		
		                    <input type="radio" name="hpAge" id="40s" value="40대" required>
		                    <label for="40s">40대</label>
		
		                    <input type="radio" name="hpAge" id="50s" value="50대" required>
		                    <label for="50s">50대</label>
		
		                    <input type="radio" name="hpAge" id="60s" value="60대" required>
		                    <label for="60s">60대</label>
		
		                    <input type="radio" name="hpAge" id="70s" value="70대" required>
		                    <label for="70s">70대</label>
		
		                    <input type="radio" name="hpAge" id="80s" value="80대" required>
		                    <label for="80s">80대</label>
	                    </div>
					</li>
					
					<li>
						<label for="gender"><i class="bi bi-6-circle-fill label-number"></i> 성별을 알려주세요!</label>
						<div class="flexbox">
							<input id="male" type="radio" name="hpGender" value="남성" required>
							<label for="male">남성</label>
							<input id="female" type="radio" name="hpGender" value="여성" required>
							<label for="female">여성</label>
						</div>
					</li>
					
					<li>
						<label for="phone"><i class="bi bi-7-circle-fill label-number"></i> 휴대전화번호를 입력해주세요!</label>
						<input id="phone" type="tel" name="hpPhone" oninput="validatePhone(this,11)" placeholder="'-'빼고 입력해주세요" class="inputform" required>
						<label id="phonecheckmsg" class="error-text" for="nickname"></label>
					</li>
					
					<li>
						<button id="submit" type="submit" disabled="disabled" class="btn btn-default">다음</button>
					</li>
				</ul>
			</fieldset>
		</form>

	</section>
	</div>
</body>
</html>