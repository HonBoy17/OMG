<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="includes/header.jsp" %>


	<div class="wrap">
		
		<section class="intro">
			<div class="content title-box">
				<ul class="intro-nav">
					<li><a href="/"><i class="bi bi-house"></i></a></li>
					<li><i class="bi bi-chevron-right"></i></li>
					<li>회원가입</li>
				</ul>
			</div>
			<div class="content intro-text">
				<h2>OMG에 오신것을<br/>환영합니다.</h2>
			</div>
			<ul class="content intro-list">
				<li class="banner intro-banner" onmouseover="mouseoverMember()" onmouseleave="mouseleaveMember()">
					<a href="/member/join" class="banner-member">
						<h3>회원으로 가입</h3>
						<img src="/resources/images/grandp1.png" id="memberImg">
						<p>OMG에 <strong>회원가입</strong>을<br/>원하시는분</p>
					</a>
				</li>
				<li class="banner intro-banner" onmouseover="mouseoverHelper()" onmouseleave="mouseleaveHelper()">
					<a href="/helper/join" class="banner-helper">
						<h3 class="htitle">헬퍼로 지원하기</h3>
						<img src="/resources/images/helper1.png" id="helperImg">
						<p>OMG에 <strong>인재채용지원</strong>을<br/>원하시는분</p>
					</a>
				</li>
			</ul>
		</section>
	</div>
	
	<script>
		 let img1 = document.getElementById('memberImg');
	     function mouseoverMember (){
	         img1.setAttribute("src","/resources/images/grandp2.png");
	     }
	     
	     function mouseleaveMember (){
	    	 img1.setAttribute("src","/resources/images/grandp1.png");
	     }
	     
	     let img2 = document.getElementById('helperImg');
	     function mouseoverHelper (){
	         img2.setAttribute("src","/resources/images/helper.png");
	     }
	     
	     function mouseleaveHelper (){
	    	 img2.setAttribute("src","/resources/images/helper1.png");
	     }
	</script>

<%@ include file="includes/footer.jsp" %>