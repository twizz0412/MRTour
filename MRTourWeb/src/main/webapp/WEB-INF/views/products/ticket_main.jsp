<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
	<link rel="stylesheet" type="text/css" href="resources/css/ticket_list.css" />
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	<meta charset="UTF-8">
	<title>미래투어 티켓</title>
	<!-- 검색값을 DB로 넘기기 위한 함수 -->
	<script>  
		function ChangeSearch() {  
		var city_no = document.getElementById("city_no");    
		
		document.getElementById("city_no_search").value = city_no.options[city_no.selectedIndex].text;
		} 
		
		function SubmitSearch() {
		    var city_no_search = document.getElementById("city_no_search").value; // 옵션의 value 값으로 변경
		    window.location.href = "hotel_list?city_no=" + city_no_search;
		}

	</script>  
</head>


<body>
	<header>
		<div class="login">
			<p>
				<a href="login"><b>로그인</a> | <a href="signup"><b>회원가입</a> | <a href="#"><b>고객센터</a>
			</p>
			<br>
			<p>
				<a href="#"><img src="resources/images/login1.png" width="50" height="50" style="float: right;"></a> <a
					href="#"><img src="resources/images/login2.png" width="50" height="50" style="float: right"></a>
			</p>
		</div>

		<div class="logo">
			<a href="#"><img src="resources/images/logo.png"></a>
		</div>


		<nav>
			<ul>
				<li><a href="car_page"><b>렌트카 </a></li>
				<li><a href="hotel_main"><b>호텔 </a></li>
				<li><a href="ticket_main"><b> 투어 | 입장권</a>
				<li><a href="#"><b> 골프</a>
				<li><a href="#"><b> 미래LIVE </a>
				<li><a href="#"><b> FAQ</a></li>
			</ul>
		</nav>
	</header>

	<!-- 본문 시작 -->
	<div id="container">
		<div id="contents">

			<!-- 상단 검색창 -->
			<div class="app-car-search-form">
				<div class="search-form-top rentalcar">
					<div class="inner">
					
						<form method="get" action="hotel_list" class= "hotelsearch">
						<div class="search-area-form same-area">
							<div class="form-column">
								<p class="title">여행지</p>
								<select name = "city_no" id = "city_no" onchange = "ChangeSearch()" >
										<option value = "전체">전체</option>
										<option value = "서울">서울</option>
										<option value = "강릉">강릉</option>
										<option value = "여수">여수</option>
										<option value = "경주">경주</option>
										<option value = "부산">부산</option>
										<option value = "제주">제주</option>
								</select>
								<input type = "hidden" id = "city_no_search" value = "">
							</div>
						</div>
						</form>	
					</div>
				</div>

			</div>



			<!--검색창 아래 본문-->
			<div class="contents-area">

				<!-- 상품 리스트 -->
				<div class="products">
					<div class="product-list">
					
						<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
							<c:set var="row" value="${map.list[i]}" />
							<c:choose>
						<%-- 검색결과가 있을 때 --%>
							<c:when test="${row.cate_id eq 'T003' && not empty row}">
								<a href="#" class="product">
								
								<li>
									<div class="pro_img" style="float: left;">
										<a href="#" class="product">
											<img src=""${row.prd_img}" href="ticket_page" width="275" height="200px">
									</div>
									<div class="pro">${row.prd_name}<p><br>
											<span>${row.prd_opt}</span>
										<p><br>
											<span>${row.prd_price} ~ </span>
									</div>
									</a>
								</li>
							</c:when>
							
							<%-- 검색결과가 없을 떄 --%>
							<c:when test="${map.count == 0}">
								검색결과가 없습니다.
							</c:when>
							</c:choose>
							</c:forEach>
						</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>


	<!-- 하단 페이지 표시 부분 -->
	<div class="pagination c-pagination">
		<pagination previoustext="이전" nexttext="다음" firsttext="맨처음" lasttext="맨끝" class="ng-untouched ng-pristine ng-valid">
		<ul class="pagination">
		
		<c:if test="${map.pager.curBlock > 1}">
			<li class="pagination-first page-item disabled">
			<a href="board?curPage=1&searchOption=${searchOption}&keyword=${keyword}
					&search=${search}">처음</a></li>
		</c:if>
		
		<c:if test="${map.pager.curBlock > 1}">
			<li class="pagination-prev page-item disabled"><a href="board?curPage=${map.pager.prevPage}
					&searchOption=${searchOption}&keyword=${keyword}&search=${search}">이전</a></li>
		</c:if>
		<c:forEach var="num" begin="${map.pager.blockBegin}" 
								end="${map.pager.blockEnd}">
			<c:choose>
				<c:when test="${num == map.pager.curPage}">
					<li class="pagination-page page-item active"><a href="" class="page-link">${num}</a></li>
				</c:when>
				<c:otherwise>
					<li class="pagination-page page-item"><a href="board?curPage=${num}&searchOption=${searchOption}&keyword=${keyword}
							&search=${search}" class="page-link">${num}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${map.pager.curBlock < map.pager.totBlock}">
			<li class="pagination-next page-item"><a href="board?curPage=${map.pager.nextPage}&searchOption=${searchOption}&keyword=${keyword}
					&search=${search}" class="page-link">다음</a></li>
		</c:if>
		<c:if test="${(map.pager.totPage > 5) && (map.pager.totPage != map.pager.curPage)}">
			<li class="pagination-last page-item"><a href="board?curPage=${map.pager.totPage}
								&searchOption=${searchOption}&keyword=${keyword}
								&search=${search}">맨끝</a></li>
		</c:if>
		</ul>
		
		</pagination>
	</div>
	</div>
</body>

</html>