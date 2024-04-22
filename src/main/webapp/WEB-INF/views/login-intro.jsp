<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="includes/header.jsp" %>

   <div class="wrap">
      <section  class="intro">
         <div class="content intro-text">
            <h2>OMG에 오신것을<br/>환영합니다.</h2>
            <!-- <p>로그인</p> -->
         </div>
         
         <ul class="content intro-list">
            <li class="banner intro-banner">
               <a href="/member/login" class="banner-member">
                  <h3>일반 회원 로그인</h3>
               </a>
            </li>
            <li class="banner intro-banner">
               <a href="/helper/login"" class="banner-helper">
                  <h3>헬퍼 로그인</h3>
               </a>
            </li>
         </ul>
      </section>
   </div>

<%@ include file="includes/footer.jsp" %>