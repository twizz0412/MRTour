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
						<div class="search-area-form same-area">

							<div class="form-column">
								<p class="title">여행지</p>
								<select name="city">
									<option value="">도시선택</option>
									<option value="서울">서울</option>
									<option value="강릉">강릉</option>
									<option value="여수">여수</option>
									<option value="부산">부산</option>
									<option value="경주">경주</option>
									<option value="제주">제주</option>
								</select>
								</p>
							</div>


							<div class="form-column">
								<p class="title">숙박인원</p>
								<p class="text">
									<select name="car">
										<option value="">인원선택</option>
										<option value="a">a</option>
										<option value="b">b</option>
										<option value="c">c</option>
										<option value="d">d</option>
										<option value="e">e</option>
									</select>
								</p>
							</div>


							<a class="btn-form-search"><b>검색</b>
							</a>
						</div>
					</div>
				</div>

			</div>



			<!--검색창 아래 본문-->
			<div class="contents-area">



				<!-- 상품 위 검색 결과 섹션 -->
				<div class="search-result-header">
					<p class="total">
						<span>935</span> 개의 상품이 검색되었습니다.
					</p>
				</div>


				<!-- 상품 리스트 -->
				<div class="products">
					<div class="product-list">
						<li>
							<div class="pro_img" style="float: left;">
								<a href="#" class="product">
									<img src="${product.prd_img}" href="ticket_page" width="275" height="200px">
							</div>
							<div class="pro">${product.prd_name}<p><br>
									<span>후쿠오카 호빵맨 어린이박물관 부근에 위치</span>
								<p><br>
									<span><fmt:formatNumber value="${product.prd_price}" pattern="#,###"/>원</span>
							</div>
							</a>
						</li>
					</div>


					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>

	<!-- 하단 페이지 표시 부분 -->
	<div _ class="pagination c-pagination">
		<pagination _ previoustext="이전" nexttext="다음" firsttext="맨처음" lasttext="맨끝"
			class="ng-untouched ng-pristine ng-valid">
			<ul class="pagination">
				<li class="pagination-first page-item disabled"><a href="" class="page-link">맨처음<!----></a></li>
				<li class="pagination-prev page-item disabled"><a href="" class="page-link">이전<!----></a></li>
				<li class="pagination-page page-item active"><a href="" class="page-link">1<!----></a></li>
				<li class="pagination-page page-item"><a href="" class="page-link">2<!----></a></li>
				<li class="pagination-page page-item"><a href="" class="page-link">3<!----></a></li>
				<li class="pagination-page page-item"><a href="" class="page-link">4<!----></a></li>
				<li class="pagination-page page-item"><a href="" class="page-link">5<!----></a></li>
				<li class="pagination-next page-item"><a href="" class="page-link">다음<!----></a></li>
				<li class="pagination-last page-item"><a href="" class="page-link">맨끝<!----></a></li>
			</ul>

		</pagination>
	</div>
	</div>
	</app-rent-tab-body></div>

</body>

</html>