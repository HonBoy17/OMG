<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
	
	<section id="interview"  class="wrap">
        <div>
            <div class="ititle">
                <p>자주 묻는 질문</p>
            </div>
            <ul class="inbox" id="faqlist">
                <li>
                    <a href="">
                        <div class="tab">
                            이용 가능한 지역이 어디인가요?
                        </div>
                    </a>
                    <div class="answer" class="on">
                        <div class="text">
                            <p>서울과 경기 지역에서 omg의 서비스를 이용하실 수 있습니다.</p>
                        </div>
                   	</div>
                </li>
                <li>
                    <a href="">
                        <div class="tab">
                            선불 결제인가요?
                        </div>
                    </a>
                    <div class="answer" class="on">
                        <div class="text">
                            <p>omg의 서비스 비용은 선불 결제로 진행되고 있습니다.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="">
                        <div class="tab">
                            자주 묻는 질문 3번
                        </div>
                    </a>
                    <div class="answer" class="on">
                        <div class="text">
                            <p>과정속에서 발생하는 다양한 오류를 빠르게 해결하기 위해서, 다른 개발자들의 문제 해결에 대한 정보를 빠르게 알아봅니다.<br>
                                이러한 구글링은 새로운 학습과 지식을 획득하고, 적용과 기록을 통해서 배워갈려고 노력합니다.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="">
                        <div class="tab">
                            자주 묻는 질문 4번
                        </div>
                    </a>
                    <div class="answer" class="on">
                        <div class="text">
                            <p>대학교 4년동안 매년 학생회를 이끌고, 다양한 활동을 통해 사람들과의 만남을 좋아했습니다.<br>
                                이러한 저의 성격은 새로운 환경에 빠르게 적응 할 자신있습니다!</p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        
    </section>
    
    <script>
		$(document).ready(function(){
		    $(".inbox li a").click(function(e){
		        e.preventDefault(); // 기본 클릭 동작 방지
	
		        var answer = $(this).closest("li").find(".answer"); // 클릭한 링크의 가까운 .answer 요소 찾기
	
		        // 클릭한 .answer 요소를 제외한 다른 형제 .answer 요소의 .on 클래스 제거
		        answer.toggleClass("on").siblings(".answer").removeClass("on");
		    });
		});
	</script>
	

<%@ include file="../includes/footer.jsp" %>