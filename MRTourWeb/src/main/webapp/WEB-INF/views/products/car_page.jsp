<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="resources/css/car_page.css" />
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>미래투어 렌트카</title>
	
	<!-- 검색값을 DB로 넘기기 위한 함수 -->
	<script>  
		function ChangeSearch() {  
		var city_no = document.getElementById("city_no");  
		var prd_opt = document.getElementById("prd_opt");  
		
		document.getElementById("city_no_search").value = city_no.options[city_no.selectedIndex].text;
		document.getElementById("prd_opt_search").value = prd_opt.options[prd_opt.selectedIndex].text;  
		} 
		
		function SubmitSearch() {
		    var city_no_search = document.getElementById("city_no_search").value; // 옵션의 value 값으로 변경
		    var prd_opt_search = document.getElementById("prd_opt_search").value; // 옵션의 value 값으로 변경
		    window.location.href = "car_page?city_no=" + city_no_search + "&prd_opt=" + prd_opt_search;
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
					
						<form method="get" action="car_page" class="carsearch">
							<div class="search-area-form same-area">
								<div class="form-column">
									<p class="title">인수 도시</p>
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
								<div class="form-column">
									<p class="title">차량명</p>
									<select name = "prd_opt" id = "prd_opt" onchange = "ChangeSearch()" >
										<option value="전체">전체</option>
										<option value="디젤">디젤</option>
										<option value="가솔린">가솔린</option>
									</select>
									<input type = "hidden" id = "prd_opt_search" value = "">
								</div>
								<input type="button" class="btn" value="검색" onclick="SubmitSearch()"/>
								<input type="hidden" name="search" id="search" value="s"/>
							</div>
						</form>	
					</div>
				</div>

			</div>
			
			<!--검색창 아래 본문-->
			<div class="contents-area">
				<!--검색창 바로 아래-->
				<app-rent-breadcrumbs class="breadcrumbs" _nghost-serverapp-c364="">
					<div class="text-article">
					<c:choose>
						<c:when test="${product_info.city_no != null}">
						<p class="text">
							<strong>${product_info.city_no}</strong>에서 이용할 렌터카를 선택해 주세요.
						</p>
						</c:when>
						<c:otherwise> <!-- 디폴트값 -->
						<p class="text">
							<strong>국내</strong>에서 이용할 렌터카를 선택해 주세요.
						</p>
						</c:otherwise>
					</c:choose>
					</div>
					<!-- 오른쪽 상품선택, 결제하기 부분 -->
					<ul class="step">
						<li class="active">
							<p class="num">1</p>
							<p class="text">상품선택</p>
						</li>
						<li>
							<p class="num">2</p>
							<p class="text">결제하기</p>
						</li>
					</ul>
				</app-rent-breadcrumbs>


				<!-- 상품 위 검색 결과 섹션 -->
				<div class="search-result-header">
					<p class="total">
						<span>${map.count}</span> 개의 상품이 검색되었습니다.
					</p>
				</div>


				<!-- 상품 리스트 -->
				<div class="products">
					
					<div class="product-list">
					
					<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
					<c:set var="row" value="${map.list[i]}" />
					<input type="hidden" id="cate_id" name="cate_id" value="${row.cate_id}"/>

					<c:choose>
					<%-- 검색결과가 있을 때 --%>
					<c:when test="${row.cate_id eq 'C001' && not empty row}">
						<a href="#" class="product">
						<br><br><br>
							<img src="${row.prd_img}" width="275" height="175px" style = "padding-top : 10px;padding-bottom : 15px">
							<div class="product-name" style="padding:5px; font-size : 25px">
								${row.prd_name}
							</div>
							<br>
							<div class="product-option" style=" padding:5px;">
								${row.prd_opt}
							</div>
							<br>
							<div class="product-price" style="padding:5px;">
								가격(2시간) : ${row.prd_price}
							</div>
							<br>
							<div class="product-button" style="padding:5px;">
								<button id="product">선택</button>
							</div>
						</a>
						</c:when>
						<%-- 검색결과가 없을 떄 --%>
						<c:when test="${map.count == 0}">
							<b style="color: blue; font-size:30px;">'${keyword}'</b> 에 대한 검색결과가 없습니다.
						</c:when>
						</c:choose>
						</c:forEach>

						<div class="clearfix"></div>
					</div>
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
	</app-rent-tab-body>
	</div>

</body>

</html>
