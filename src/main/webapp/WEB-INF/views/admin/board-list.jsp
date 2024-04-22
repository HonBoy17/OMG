<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

	<script>
		$(function(){
			$('#mvo-search').keyup(function(){
				var keyWord = $(this).val().toLowerCase();
				// 회원 목록 검색폼에 입력된 검색어를 얻어와 소문자로 변경한다.
				$('#mvo-rows > tr').filter(function(){
					$(this).toggle($(this).text().toLowerCase().indexOf(keyWord) > -1);
					// toggle()는 이벤트 효과 메소드로 요소가 있으면 보이게 하고 없으면 숨긴다.
					// text()는 파라미터가 없으면 값을 얻어오고 파라미터 값이 있으면 값을 설정한다.
					// indexOf()는 같은 값이 있으면 인덱스 번호를 반환한다. 없으면 -1을 반환한다.
				});
			});
			
			$('#bvo-search').keyup(function(){
				var keyWord = $(this).val().toLowerCase();
				
				$('#bvo-rows > tr').filter(function(){
					$(this).toggle($(this).text().toLowerCase().indexOf(keyWord) > -1);
				});
			});
			
			
			var total = $('#total').val();
			var menCnt = $('#menCnt').val();
			var womenCnt = $('#womenCnt').val();
			
			$('#men-result-text').text(Math.round(menCnt / total * 100));
			$('#women-result-text').text(Math.round(womenCnt / total * 100));
		});
	</script>

	<div class="wrap">
		<h2 class="content-header admin-board">
       		<i class="bi bi-chat-right-text-fill"></i><span class="title"> 게시판 이용 현황</span>
       	</h2>
       	<section>
       		<div class="banner admin-banner">
       			<h3 class="title">게시판 이용 현황</h3>
       		</div>
       	</section>
	</div>
	
<%@ include file="../includes/footer.jsp" %>



















    