<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

	<script>
		$(function(){
			$('#id').focus();
			let msg = $('#massage').val();
			if (msg == 'idNull') {
				alert('아이디가 존재하지 않습니다.');
			} else if (msg == 'pwdEncorrect') {
				alert('비밀번호가 일치하지 않습니다.');
			}
		});
	</script>
	<input type="hidden" id="massage"value="${msg}">
	<div class="wrap">
			<section>
				<form action="/member/login" method="post">
					<ul class="content login-box">
						<li>
							<p class="text">똑똑한 노후생활,<br/>OMG로 시작하세요</p>
						</li>
						<li>
							<label for="id">아이디</label>
							<input id="id" type="text" name="mbId" placeholder="아이디 입력" required class="inputform" autofocus>
						</li>
						<li>
							<label for="password">비밀번호</label>
							<input id="password" type="password" name="mbPassword" placeholder="비밀번호 입력" required class="inputform">
						</li>
						<li>
							<button type="submit" class="btn btn-submit-member">로그인</button>
						</li>
						<li><p class="login-box-text">아직 OMG의 회원이 아니신가요?<a href="/join-intro">회원가입하기!</a></p></li>
					</ul>
				</form>
		</section>
	</div>
	
<%@ include file="../includes/footer.jsp" %>