<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="resources/css/car_page.css" />
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>미래투어 렌트카</title>

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
								<p class="title">인수 도시</p>
								<select name="city">
									<option value="">도시선택</option>
									<option value="제주">제주</option>
									<option value="부산">부산</option>
									<option value="여수">여수</option>
									<option value="강릉">강릉</option>
									<option value="가평">가평</option>
								</select>
								</p>
							</div>


							<div class="form-column">
								<p class="title">차량명</p>
								<p class="text">
									<select name="car">
										<option value="">차량선택</option>
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
				<!--검색창 바로 아래-->
				<app-rent-breadcrumbs class="breadcrumbs" _nghost-serverapp-c364="">
					<div _ class="text-article">
						<p _ class="text">
							<strong _>제주</strong>에서 이용할 렌터카를 선택해 주세요.
						</p>
						<p _ class="sub-text"> 2023.03.28(화) 08:00 - 2023.03.29(수) 08:00 </p>
					</div>
					<!-- 오른쪽 상품선택, 결제하기 부분 -->
					<ul _ class="step">
						<li _ class="active">
							<p _ class="num">1</p>
							<p _ class="text">상품선택</p>
						</li>
						<li _>
							<p _ class="num">2</p>
							<p _ class="text">결제하기</p>
						</li>
					</ul>
				</app-rent-breadcrumbs>


				<!-- 상품 위 검색 결과 섹션 -->
				<div class="search-result-header">
					<p class="total">
						<span>935</span> 개의 상품이 검색되었습니다.
					</p>
				</div>


				<!-- 상품 리스트 -->
				<div class="products">

					<div class="product-list">
						<a href="#" class="product">
							<img src="resources/images/1.jpg" width="275" height="275px">
							<div class="product-name" style="padding:5px;">
								상품명
							</div>
							<div class="product-option" style="padding:5px;">
								옵션
							</div>
							<div class="product-price" style="padding:5px;">
								가격
							</div>
							<div class="product-button" style="padding:5px;">
								<button id="product">선택</button>
							</div>
						</a>



						<a href="#" class="product">
							<img src="resources/images/1.jpg" width="275" height="275px">
							<div class="product-name" style="padding:5px;">
								상품명
							</div>
							<div class="product-option" style="padding:5px;">
								옵션
							</div>
							<div class="product-price" style="padding:5px;">
								가격
							</div>
							<div class="product-button" style="padding:5px;">
								<button id="product">선택</button>
							</div>
						</a>



						<a href="#" class="product">
							<img src="resources/images/1.jpg" width="275" height="275px">
							<div class="product-name" style="padding:5px;">
								상품명
							</div>
							<div class="product-option" style="padding:5px;">
								옵션
							</div>
							<div class="product-price" style="padding:5px;">
								가격
							</div>
							<div class="product-button" style="padding:5px;">
								<button id="product">선택</button>
							</div>
						</a>



						<a href="#" class="product">
							<img src="resources/images/1.jpg" width="275" height="275px">
							<div class="product-name" style="padding:5px;">
								상품명
							</div>
							<div class="product-option" style="padding:5px;">
								옵션
							</div>
							<div class="product-price" style="padding:5px;">
								가격
							</div>
							<div class="product-button" style="padding:5px;">
								<button id="product">선택</button>
							</div>
						</a>


						<a href="#" class="product">
							<img src="resources/images/1.jpg" width="275" height="275px">
							<div class="product-name" style="padding:5px;">
								상품명
							</div>
							<div class="product-option" style="padding:5px;">
								옵션
							</div>
							<div class="product-price" style="padding:5px;">
								가격
							</div>
							<div class="product-button" style="padding:5px;">
								<button id="product">선택</button>
							</div>
						</a>


						<a href="#" class="product">
							<img src="resources/images/1.jpg" width="275" height="275px">
							<div class="product-name" style="padding:5px;">
								상품명
							</div>
							<div class="product-option" style="padding:5px;">
								옵션
							</div>
							<div class="product-price" style="padding:5px;">
								가격
							</div>
							<div class="product-button" style="padding:5px;">
								<button id="product">선택</button>
							</div>
						</a>

						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>

		<!-- 하단 페이지 표시 부분 -->
<div _ class="pagination c-pagination">
	<pagination _ previoustext="이전" nexttext="다음" firsttext="맨처음" lasttext="맨끝" class="ng-untouched ng-pristine ng-valid">
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
	
	</pagination></div></div>
	</app-rent-tab-body></div>

</body>

</html>