<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	<script>
		$(function(){
			$('#mb-delete').click(function(){
				if (confirm('정말 회원탈퇴 하겠습니까?') == true) {
					$(this).attr('type', 'submit');
				} else {
					$(this).attr('type', 'button');
					return;
				}
			});
		});
	</script>
	
	<div class="wrap">
		<section>
			<form action="/member/delete" method="post">
				<ul id="member">
					<li>
						<label>아이디 : </label>
						<input type="text" name="userid" value="${delete.userid}" class="inputform" readonly>
					</li>
					<li>
						<label>비밀번호 : </label>
						<input type="password" name="pwd" required class="inputform">
					</li>
					<li>
						<button id="mb-delete" type="" class="btn btn-submit">회원탈퇴</button>
						<button type="reset" class="btn btn-reset">다시쓰기</button>
						<a href="/member/mypage?userid=${delete.userid}" class="btn btn-orange">마이페이지</a>
					</li>
				</ul>
			</form>
		</section>
	</div>
<%@ include file="../includes/footer.jsp" %>









