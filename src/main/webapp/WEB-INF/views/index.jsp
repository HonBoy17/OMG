<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="includes/header.jsp" %>

	<div class="wrap">
		<c:if test="${user.level == '1'}">
			<ul>
				<li>${user.mbName}님 반가워요</li>
			</ul>
		</c:if>
		<c:if test="${user.level == '2'}">
			<ul>
				<li>${user.hpName}님 반가워요</li>
			</ul>
		</c:if>
		<c:if test="${user.level == '3'}">
			<ul>
				<li>${user.empName}님 반가워요</li>
			</ul>
		</c:if>
		<c:if test="${user.level == '9'}">
			<ul>
				<li>${user.empnName}님 반가워요</li>
			</ul>
		</c:if>
	</div>

<%@ include file="includes/footer.jsp" %>