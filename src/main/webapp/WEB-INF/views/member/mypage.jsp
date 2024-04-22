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
</head>
<body>
	<c:if test="${user != null}">
		<div class="mypage member-mypage">
			
				<header class="mypage-header">
					<div class="top-area">
						<p>마이페이지</p>
					</div>
					<div class="profile-area">
						<p class="user-name"><span>${mypage.mbName}</span>님</p>
						<p class="user-id">${mypage.mbId}</p>
					</div>
					<div class="info-nav">
						<ul>
							<li><a href="#">내계정정보</a></li>
							<li><a href="#">내구독정보</a></li>
						</ul>
					</div>
					<div class="handler-nav">
						<ul>
							<li><a href="#">고객센터</a></li>
							<li><a href="/logout">로그아웃</a></li>
						</ul>
					</div>
				</header>
				
				<div class="mypage-info">

						<ul>
							<li>
								<div>
									<h2>기본 정보 관리</h2>
									<button class="btn btn-default">수정하기</button>
								</div>
								<div class="banner">
									<ul>
										<li><p>이름: ${mypage.mbName}</p></li>
										<li><p><i class="bi bi-phone"></i>&nbsp;전화번호: ${mypage.mbPhone}</p></li>
										<li><p><i class="bi bi-mailbox2-flag"></i>&nbsp;우편번호: ${mypage.mbPostcode}</p></li>
										<li><p><i class="bi bi-geo-alt-fill"></i>&nbsp;주소: ${mypage.mbAddress}&nbsp;${mypage.mbDetailAddr}</p></li>
									</ul>
								</div>
							</li>
							<li>
								<div>
									<h2>선호 정보 관리</h2>
									<button class="btn btn-default">수정하기</button>
								</div>
								<div class="banner">
									<ul>
										<li><p><i class="bi bi-arrow-through-heart-fill"></i>&nbsp;요청성격: ${mypage.mbRequestPrsnl}</p></li>
										<li><p>요청연령대: ${mypage.mbRequestAge}</p></li>
										<li><p><i class="bi bi-exclamation-octagon-fill"></i>&nbsp;주의사항: ${mypage.mbCaution}</p></li>
									</ul>
								</div>
							</li>
							<li class="delete-account-msg"><a href="/member/delete">회원탈퇴<i class="bi bi-chevron-right"></i></a></li>
						</ul>
						
				</div>
			
		</div>
	</c:if>
</body>
</html>