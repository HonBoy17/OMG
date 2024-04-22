<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OMG</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="/resources/css/member.css">
<link rel="stylesheet" href="/resources/css/admin.css">
<link rel="stylesheet" href="/resources/css/board.css">
<link rel="stylesheet" href="/resources/css/cs.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<header class="main-header">
		<nav>
			<h1 class="logo"><a href="/">omg</a></h1>
			<a href="#" id="trigger">
				<span></span>
				<span></span>
				<span></span>
			</a>
			
			<ul class="main-menu">
				<li>
					<a href="#">메뉴1</a>
				</li>
				<li>
					<a href="#">메뉴2</a>
				</li>
				<li>
					<a href="#">메뉴3</a>
				</li>
				<li><a href="#">메뉴4</a></li>
			</ul>
		
		<c:if test="${user == null}"><!-- 로그아웃 상태 -->
			<ul class="user-menu">
				<li><a href="/login-intro">로그인<i class="bi bi-chevron-right"></i></a></li>
				<li><a href="/join-intro">회원가입<i class="bi bi-chevron-right"></i></a></li>
			</ul>
			<ul class="phone-user-menu">
				<li><a href="/member/login"><i class="bi bi-person-fill"></i></a></li>
				<li><a href="/member/join"><i class="bi bi-people-fill"></i></a></li>
			</ul>
		</c:if>
		
		<c:if test="${user != null}"><!-- 로그인 상태 -->
			<ul class="user-menu">
				<c:if test="${user.level == 1}">
					<li><a href="/logout">로그아웃</a></li>
					<li><a href="/member/mypage?mbId=${user.mbId}">마이페이지</a></li>
				</c:if>
				<c:if test="${user.level == 2}">
					<li><a href="/logout">로그아웃</a></li>
					<li><a href="/helper/mypage?hpId=${user.hpId}">마이페이지</a></li>
				</c:if>
				<c:if test="${user.level == 3}">
					<li><a href="/logout">로그아웃</a></li>
					<li><a href="/employee/mypage?empId=${user.empId}">마이페이지</a></li>
				</c:if>
				<c:if test="${user.level == 9}">
					<li><a href="/admin/list">관리자모드</a></li>
					<li><a href="/logout">로그아웃</a></li>
				</c:if>
			</ul>
			
			<ul class="phone-user-menu">
				<c:if test="${user.level == 1}">
					<li><a href="/member/mypage?mbId=${user.mbId}">마이페이지</a></li>
					<li><a href="/logout">로그아웃</a></li>
				</c:if>
				<c:if test="${user.level == 2}">
					<li><a href="/helper/mypage?id=${user.hpId}">마이페이지</a></li>
					<li><a href="/logout">로그아웃</a></li>
				</c:if>
				<c:if test="${user.level == 3}">
					<li><a href="/employee/mypage?id=${user.empId}">마이페이지</a></li>
					<li><a href="/logout">로그아웃</a></li>
				</c:if>
				<c:if test="${user.level == 9}">
					<li><a href="/admin/list">관리자모드</a></li>
					<li><a href="/logout">로그아웃</a></li>
				</c:if>
			</ul>
		</c:if>
		</nav>
	</header>