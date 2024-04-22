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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css" integrity="sha512-OTcub78R3msOCtY3Tc6FzeDJ8N9qvQn1Ph49ou13xgA9VsH9+LRxoFU6EqLhW4+PKRfU+/HReXmSZXHEkpYoOA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
	<script>
		$(document).ready(function(){
		  $(".owl-carousel").owlCarousel({
			  margin: 40,
			  responsive: {
				  1: {
					  items:1,
				  },
		  		  768: {
		  			  items:3,
		  			  nav: true
		  		  }
			  }
		  });
		});
	</script>
	<c:if test="${user != null}">
		<div class="mypage helper-mypage">
			
				<header class="mypage-header">
					<div class="top-area">
						<p><a href="/"><i class="bi bi-chevron-left"></i></a> 마이페이지</p>
					</div>
					<div class="profile-area-title">
						<i class="bi bi-person-circle member-image"></i>
						<p class="user-name"><span>${mypage.hpName} / ${mypage.hpNickname}</span> 님 <a href="#"><i class="bi bi-gear"></i></a></p>
						<p class="user-id">${mypage.hpId}</p>
					</div>
					<div class="profile-area-detail">
						<ul>
							<li>
								<h3>유형</h3>
								<div class="banner">${mypage.hpType}</div>
							</li>
							<li>
								<h3>담당지역</h3>
								<div class="banner">${mypage.hpArea}</div>
							</li>
							<li>
								<h3>추천도</h3>
								<div class="banner">${mypage.hpPreference}°C</div>
							</li>
						</ul>
					</div>
					<div class="profile-area-prsnl">
						<h3 class="profile-area-prsnl-title">성격 키워드</h3>
						<ul>
							<li>
								<div class="banner">${mypage.hpPrsnl}</div>
							</li>
							<li>
								<div class="banner">${mypage.hpPrsnl}</div>
							</li>
							<li>
								<div class="banner">${mypage.hpPrsnl}</div>
							</li>
						</ul>
					</div>
					<div class="handler-nav">
						<ul>
							<li><a href="#">고객센터</a></li>
							<li><a href="/logout">로그아웃</a></li>
						</ul>
					</div>
				</header>
				
				<section class="mypage-info">					
					<div class="notice">
						<img src="/resources/images/marketing.png">
						<ul>
							<li>
								<h3>공지사항</h3><a href="#"><i class="bi bi-chevron-left"></i>더보기</a>
							</li>
							<li>[공지] 멤버십 약관 관련 정책 시행 사전안내 (시행일자: 2023년 10월 1일)</li>
							<li>[공지] 멤버십 약관 관련 정책 시행 사전안내 (시행일자: 2023년 10월 1일)</li>
							<li>[공지] 멤버십 약관 관련 정책 시행 사전안내 (시행일자: 2023년 10월 1일)</li>
						</ul>
					</div>
					<div class="member-list">
						<img src="/resources/images/grandp1.png">
						<h3>담당 회원 정보</h3>
						<div class="owl-carousel">
						  	<a href="#" class="member-detail">
							  	<ul>
							  		<li><h3><span>이인서님</span> 30대</h3></li>
							  		<li>01012341234</li>
							  		<li><i class="bi bi-exclamation-triangle"></i></i></li>
							  		<li>매운거 못드심<br/>양배추 좋아하심<br/>오른쪽 무릎 염증</li>
							  	</ul>
						  	</a>
						  	<a href="#" class="member-detail">
							  	<ul>
							  		<li><h3><span>이인서님</span> 30대</h3></li>
							  		<li>01012341234</li>
							  		<li><i class="bi bi-exclamation-triangle"></i></i></li>
							  		<li>매운거 못드심<br/>양배추 좋아하심<br/>오른쪽 무릎 염증</li>
							  	</ul>
						  	</a>
						  	<a href="#" class="member-detail">
							  	<ul>
							  		<li><h3><span>이인서님</span> 30대</h3></li>
							  		<li>01012341234</li>
							  		<li><i class="bi bi-exclamation-triangle"></i></i></li>
							  		<li>매운거 못드심<br/>양배추 좋아하심<br/>오른쪽 무릎 염증</li>
							  	</ul>
						  	</a>
						  	<a href="#" class="member-detail">
							  	<ul>
							  		<li><h3><span>이인서님</span> 30대</h3></li>
							  		<li>01012341234</li>
							  		<li><i class="bi bi-exclamation-triangle"></i></i></li>
							  		<li>매운거 못드심<br/>양배추 좋아하심<br/>오른쪽 무릎 염증</li>
							  	</ul>
						  	</a>
						  	<a href="#" class="member-detail">
							  	<ul>
							  		<li><h3><span>이인서님</span> 30대</h3></li>
							  		<li>01012341234</li>
							  		<li><i class="bi bi-exclamation-triangle"></i></i></li>
							  		<li>매운거 못드심<br/>양배추 좋아하심<br/>오른쪽 무릎 염증</li>
							  	</ul>
						  	</a>
						  	<a href="#" class="member-detail">
							  	<ul>
							  		<li><h3><span>이인서님</span> 30대</h3></li>
							  		<li>01012341234</li>
							  		<li><i class="bi bi-exclamation-triangle"></i></i></li>
							  		<li>매운거 못드심<br/>양배추 좋아하심<br/>오른쪽 무릎 염증</li>
							  	</ul>
						  	</a>
						</div>
					</div>
				</section>
	</c:if>
</body>
</html>