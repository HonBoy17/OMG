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
	
	<div class="wrap">
		<input type="hidden" id="massage"value="${msg}">
		<form action="/helper/login" method="post">
			<ul class="center-box login-box">
				<li>
					<p class="center-text">도우미 로그인 화면</p>
				</li>
				<li>
					<label for="id">아이디</label>
					<input id="id" type="text" name="hpId" placeholder="아이디 입력" required class="inputform" autofocus>
				</li>
				<li>
					<label for="password">비밀번호</label>
					<input id="password" type="password" name="hpPassword" placeholder="비밀번호 입력" required class="inputform">
				</li>
				<li>
					<button type="submit" class="btn btn-submit-helper">로그인</button>
				</li>
				<li><p class="login-box-text">아직 OMG의 회원이 아니신가요?<a href="/join-intro">회원가입하기!</a></p></li>
			</ul>
		</form>
	</div>
	
<%@ include file="../includes/footer.jsp" %>