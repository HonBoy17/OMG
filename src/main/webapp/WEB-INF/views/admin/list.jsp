<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
   	<div class="wrap">
		
       	<h2 class="content-header">
       		<i class="bi bi-clipboard-data-fill"></i><span class="title"> 관리자 페이지</span>
       	</h2>
       	<section class="adminlist">
            <ul class="adminlist-box">
                <li>
                    <a href="/admin/member-list" class="banner">
	                    <h3>사용자 이용 현황</h3>
	                    <i class="bi bi-person-lines-fill"></i>
                    </a>
                </li>
				
				<li>
                    <a href="#" class="banner">
	                    <h3>수익 현황</h3>
	                    <i class="bi bi-graph-up-arrow"></i>
                    </a>
                </li>
                
                <li>
                    <a href="#" class="banner">
                    	<h3>서비스 데이터</h3>
          	            <i class="bi bi-pie-chart"></i>
                    </a>
                </li>


                <li>
                    <a href="/admin/board-list" class="banner">
	                    <h3>게시판 이용 현황</h3>
	                    <i class="bi bi-chat-right-text-fill"></i>
                    </a>
                </li>
                
            </ul>
    	</section>
    </div>
	
<%@ include file="../includes/footer.jsp" %>