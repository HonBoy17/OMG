<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
	<div class="wrap">
		<section>
			<form action="/member/modify" method="post">
				<ul id="member" class="modify">
					<li>
						<label for="id">아이디 : </label>
						<input id="id" type="text" name="id" value="${modify.id}" class="inputform" readonly>
					</li>
					<li>
						<label>비밀번호 : </label>
						<input type="password" name="password" value="${modify.password}" required class="inputform">
					</li>
					<li>
						<label>이 름 : </label>
						<input type="text" name="name" value="${modify.name}" required class="inputform">
					</li>
					<li>
						<label for="birth">생년월일 : </label>
						<input id="birth" type="date" name="birth" value="${modify.age}" class="inputform">
					</li>
					<li class="gender">
						<input id="man" type="radio" name="gender" value="남자" checked>
						<label for="man">남 자</label>
						<input id="woman" type="radio" name="gender" value="여자">
						<label for="woman">여 자</label>
					</li>
					<li>
						<label>주 소 : </label>
						<input type="text" name="address" value="${modify.address}" class="inputform">
					</li>
					<li>
						<label>전화번호 : </label>
						<input type="tel" name="phone" value="${modify.phone}" class="inputform"></li>
					<li>
						<button id="submit" type="submit" class="btn btn-submit">정보수정</button>
						<button type="reset" class="btn btn-reset">다시쓰기</button>
						<a href="/member/mypage?id=${modify.id}" class="btn btn-orange">마이페이지</a>
					</li>
				</ul>
			</form>
		</section>
	</div>

<%@ include file="../includes/footer.jsp" %>









