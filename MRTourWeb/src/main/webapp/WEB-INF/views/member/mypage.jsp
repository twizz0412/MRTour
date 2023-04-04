<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
				<title>미래투어</title>
				<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script type="text/javascript" src="resources/js/cart.js" charset="UTF-8"></script>

    <link rel="stylesheet" href="resources/css/mypage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
</head>

<body>

<div class="tabb2">
   <!-- TAB CONTROLLERS -->
<input id="panel-1-ctrl" class="panel-radios" type="radio" name="tab-radios" checked>
<input id="panel-2-ctrl" class="panel-radios" type="radio" name="tab-radios">
<input id="panel-3-ctrl" class="panel-radios" type="radio" name="tab-radios">

<!-- TABS LIST -->
<ul id="tabs-list">
    <!-- MENU TOGGLE -->
    <li id="li-for-panel-1">
      <label class="panel-label" for="panel-1-ctrl">My Page</label>
    </li>
    <li id="li-for-panel-2">
      <label class="panel-label" for="panel-2-ctrl">주문내역</label>
    </li>
    <li id="li-for-panel-3">
      <label class="panel-label" for="panel-3-ctrl">장바구니</label>
    </li>
</ul>

<!-- THE PANELS -->
<article id="panels">
  <div class="container">
  <!-- 회원정보 수정 섹션 -->
    <section id="panel-1">
      <main>
        <p>
            <main class="SignUpEmail-Container">
   
              
                <!-- 입력 칸 -->
                    <form action="signup" method="POST" class="SignUpEmail-Form">
                    
                        <!-- 아이디 섹션 -->
                        <div class="SignUpEmail-Section">
                            <div class="FormTextInput-Container">
                                <!-- 중복확인 버튼 -->
                                <label for="member_id" required="" class="FormTextInput-Label">아이디</label>
                                <input type="button" onClick="idChk()" class = "idchk" cursor = "pointer" value="중복확인" /><br>
                                    <label id="idchk"></label>
                                <!-- 입력칸 -->
                                <input id="member_id" type="text" placeholder="ID를 입력해주세요" class="FormTextInput-Input" value="">
                            </div>
                        </div>
                        
                        <!-- 비밀번호 섹션 -->
                        <div class="SignUpEmail-Section">
                            <div class="FormTextInput-Container">
                                <label for="userPasswordCurrent" required="" class="FormTextInput-Label">비밀번호</label>
                                <input id="member_pwd" name="user[password]" type="password" placeholder="영문, 숫자, 특수문자 2가지 조합 8~15자" 
                                       class="FormTextInput-Input" value="">
                            </div>
                        </div>
                        
                        <!-- 비밀번호 확인 섹션 -->
                        <div class="SignUpEmail-Section">
                            <div class="FormTextInput-Container">
                                <label for="member_pwd_chk" required="" class="FormTextInput-Label">비밀번호 확인</label>
                                <input id="member_pwd_chk" name="user[confirm]" type="password" placeholder="비밀번호를 한번 더 입력해주세요." 
                                       class="FormTextInput-Input" value="">
                            </div>
                        </div>
                                
                        <!-- 이름 섹션 -->
                        <div class="SignUpEmail-Section">
                            <div class="FormTextInput-Container">
                                <label for="member_name" required="" class="FormTextInput-Label">이름</label>
                                <input id="member_name" name="user[name]" type="text" placeholder="이름을 입력해주세요." class="FormTextInput-Input" value="">
                            </div>
                        </div>   
                                            
                        <!-- 생년월일 섹션 -->
                        <div class="SignUpEmail-Section">
                            <div class="FormTextInput-Container">
                                <label for="member_birth" required="" class="FormTextInput-Label">생년월일</label><br>
                                <select id="birth_year" class="FormTextInput-third"  style = "margin-right : 11px">
                                    <option value="">년</option>
                                        <c:forEach var="i" begin="0" end="${2019-1900}">
                                            <c:set var="yearOption" value="${2019-i}" />
                                            <option value="${yearOption}">${yearOption}</option>
                                        </c:forEach>
                                    </select>
                                    <select id="birth_month" class="FormTextInput-third" style = "margin-right : 11px">
                                        <option value="">월</option>
                                        <c:forEach var="j" begin="0" end="${12-1}">
                                            <c:set var="monthOption" value="${12-j}" />
                                            <option value="${monthOption}">${monthOption}</option>
                                        </c:forEach>
                                    </select> 
                                <input type="text" id="birth_day" size="3" class="FormTextInput-third"  
                                       maxlength="2" placeholder="일"/><br>
                            </div>
                        </div>
            
                        <!-- 전화번호 섹션 -->
                        <div class="SignUpEmail-Section">
                            <div class="FormTextInput-Container">
                                <label for="userPhone" required="" class="FormTextInput-Label">전화번호</label><br>
                                    <select id="Numst" class="FormTextInput-third" >
                                        <option value="" selected>::선택::</option>
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                    </select> - 
                                    <input type="text" id="Numnd" class="FormTextInput-third"  maxlength="4" size="4" /> - 
                                    <input type="text" id="Numrd" class="FormTextInput-third"  maxlength="4" size="4" />
                            </div>
                        </div>   
                                                        
                        <!-- 이메일 섹션 -->
                        <div class="SignUpEmail-Section">
                            <div class="FormTextInput-Container">
                                <label for="member_email" required="" class="FormTextInput-Label">이메일</label><br>
                                <input type = "text" size = "15" id="email_id" class="input">
                                    <span class = "sp_mail">@</span>
                                <input type="text" size="15" id="email_addr" class="input" disabled>
                                    <select id="email_select">
                                        <option value="" selected>::선택하세요::</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hanmail.net">hanmail.net</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="1">직접입력</option>
                                    </select>
                            </div>
                        </div>
                                    
                        
                        <!-- 주소 섹션 -->      
                        <div class="SignUpEmail-Section">
                            <div class="FormTextInput-Container">
                                <label for="1stAddr" required="" class="FormTextInput-Label">주소</label><br>
                                    <input type="text" name="member_zipcode" id="member_zipcode"  placeholder="우편번호" class="FormTextInput-post"
                                           readonly size="10" >
                                    <input type="button" onclick="searchPost()" value="주소 찾기" class = "postchk"><br>
                                    <input type="text" name="member_faddr" id="member_faddr" class="FormTextInput-Input" 
                                           size="60" readonly>
                                <label for="2ndAddr" required="" style = "font-size: 14px; font-weight: 500;">상세주소</label>
                                        <input type="text" name="member_laddr" id="member_laddr" class="FormTextInput-Input" size="60">
                            </div>
                        </div>   
                        
                        
                        
                        <!-- 회원가입 버튼 -->
                        <span role="button" class="ButtonArea">
                            <button type="button" class="mrt-button Button" onclick="Signup()">
                                <span class="Join">정보수정</span>
                            </button>
                        </span>
                    </form>
                </main>
        </p>
      </main>
    </section>




<!-- 주문 내역 섹션 -->
    <section id="panel-2">
      <main>
        <div class="pn2">
        <p>님의 주문내역입니다.</p></div>


        <div id="contents" class="contents">
            <input type="hidden" id="curPage" value="${curPage }"/>
            <center>
            <div class="text_wrap fix">
           
             </div>
           
                <div class="tbl">
                    <table class="type1">
                         
                          <thead>
                            <tr>
                              <th>주문번호</th>
                              <th>주문일자</th>
                              <th>상품명</th>
                              <th>결제금액</th>
                            </tr>
                          </thead> 
                     
                    </table>
                    <br>
                    <br>
                
                    <!-- 페이지 네비게이션 출력 -->
                    <div align="center">
                        <c:if test="${map.pager.curBlock > 1}">
                            <a href="notice?curPage=1
                                    &searchOption=${searchOption}&keyword=${keyword}
                                    &search=${search}">[처음]</a>
                        </c:if>
                        <c:if test="${map.pager.curBlock > 1}">
                            <a href="notice?curPage=${map.pager.prevPage}
                                    &searchOption=${searchOption}&keyword=${keyword}
                                    &search=${search}">[이전]</a>
                        </c:if>
        
                        <c:forEach var="num" begin="${map.pager.blockBegin}" 
                                    end="${map.pager.blockEnd}">
                            <c:choose>
                                <c:when test="${num == map.pager.curPage}">
                                    <!-- 현재 페이지인 경우 하이퍼링크 제거 -->
                                    <span style="color: red;">${num}</span>
                                </c:when>
                                
                                <c:otherwise>
                                    <a href="notice?curPage=${num}
                                    &searchOption=${searchOption}&keyword=${keyword}
                                    &search=${search}">${num}</a>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
            
                        <c:if test="${map.pager.curBlock < map.pager.totBlock}">
                            <a href="notice?curPage=${map.pager.nextPage}
                                    &searchOption=${searchOption}&keyword=${keyword}
                                    &search=${search}">[다음]</a>
                        </c:if>
                        <c:if test="${(map.pager.totPage > 5) && 
                        (map.pager.totPage != map.pager.curPage)}">
                            <a href="notice?curPage=${map.pager.totPage}
                                    &searchOption=${searchOption}&keyword=${keyword}
                                    &search=${search}">[끝]</a>
                        </c:if>
                    </div>
            </center>
        </div>
      </main>
    </section>






<!-- 장바구니 섹션 -->

    <section id="panel-3">
      <main><div class="pn2">
        <p>${member.member_name}님의 장바구니 목록입니다.</p></div>
<input type="hidden" id="member_name" value="${member.member_name}"/>

           
                <div class="tbl">
                    <table class="type1">
                         
                          
   <tr>
    <th><input id="checkAll" type="checkbox" checked /></th>                        
				<th>이미지</th>
				<th width="300px">상품정보</th>
				<th>판매가</th>
				<th>수량</th>
				<th>합계</th>
				<th>삭제</th>
			</tr>
			<c:set var="priceSum" value="0" />
			<c:forEach items="${cartPrd}" var="cartprd"><!-- 카트에 담긴 각 상품 -->
				<tr align="center">
					<!--체크박스-->
					<td>
						<input type="checkbox" name="chk" onclick="calCart()" value="${cartprd.prd_id}" checked />
						<input type="hidden" name="prd_sum" value="${cartprd.prd_sum}" />
						<input type="hidden" id="member_id" value="${member.member_id}"/>
					</td>
					<td><img src="${cartprd.prd_img}" width="75" height="75"></td><!-- 이미지 썸네일 -->
					<td>${cartprd.prd_name}</td><!-- 상품명 -->
					<td><fmt:formatNumber value="${cartprd.prd_price}" pattern="#,###"/></td><!-- 판매가 -->
					<td><fmt:formatNumber value="${cartprd.buy_quantity}" pattern="#,###"/></td><!-- 수량 -->
					<td><fmt:formatNumber value="${cartprd.prd_sum}" pattern="#,###"/></td><!-- 합계 -->
					<td>
						<input type="button" id="delCart" onClick="delCart('${cartprd.prd_id}', '${member.member_id}')" value="삭제" />
						<input type="hidden" id="prd_id" value="${cartprd.prd_id}" />
					</td>
				</tr>
				<c:set var="priceSum" value="${priceSum + cartprd.prd_sum}" />
			</c:forEach>
			<tr align="center">
				<td colspan="7">
					<input type="button" name="cartClear" id="cartClear" onclick="cartClear()" value="상품 비우기" />
				</td>
			</tr>
		</table><br>
		
		<br><br>
		<h1>결제</h1>
		<table class="cart3" align="center">
			<tr align="center">
				<th colspan="2">총 합계</th>
				<th colspan="4"><h2 id="prd_sum"><fmt:formatNumber value="${priceSum}" pattern="#,###" /></h2></th>
			</tr>

    
   </table><br>
   <div class="paybtn">
   		<input type="button" id="payCart" onclick="payCart()" value="결제하기" />
					<input type="hidden" name="hiddenbtn" id="hiddenbtn" value="cartpage" />
   </div>
                    
                    <br>
                    <br>
                
                    
        </div>
      </main>
    </section>
  </div>

</div>
</article>


<script>
$(document).ready(function() {	
	// 최상단 체크박스 클릭 시 모두 클릭됨
	$("#checkAll").click(function() {	// 클릭
		if ($("#checkAll").prop("checked")) {	// input tag name="chk" checked=true
			$("input[name=chk]").prop("checked", true);
		} else {
			$("input[name=chk]").prop("checked", false);
		}
	})
	
	$("input[name=chk]").click(function() {
		if ($("input[name=chk]").length == $("input[name=chk]:checkbox:checked").length) {
			$("#checkAll").prop("checked", true);
		} else {
			$("#checkAll").prop("checked", false);
		}
	})
})

	// 결제
	function payCart() {
		var member_id = $("#member_id").val();
		var hiddenbtn = $("#hiddenbtn").val();
		if ($("input[name=chk]:checkbox:checked").length == 0) {
			swal("", "결제할 상품을 선택해주세요.", "warning");
		} else {
			$.ajax({
				type : "POST",
				url : "payment",
				data : {
					"member_id" : member_id,
					"hiddenbtn" : hiddenbtn
				}, success : function(data) {
					console.log(data);
					window.location.href="payment";
				}
			});
		}
	}
    
    
    
        $(document).ready(function () {

            $('ul.tabs li').click(function () {
                var tab_id = $(this).attr('data-tab');

                $('ul.tabs li').removeClass('current');
                $('.tab-content').removeClass('current');

                $(this).addClass('current');
                $("#" + tab_id).addClass('current');
            })

        })
    </script>
</body>

</html>