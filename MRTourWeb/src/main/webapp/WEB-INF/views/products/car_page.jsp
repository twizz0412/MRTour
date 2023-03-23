<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/car_page.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>미래투어 렌트카</title>
</head>
<body class="bg" style="padding-right: 0px;">
<app-car-page>
<div id="wrap" class="car_page">
<!-- header 들어갈 자리 -->
<!-- 본문 시작 -->
<div id="container">
<div id="contents">

<!-- 상단 검색창 -->
<app-car-search-form>
<div _ class="search-form-top rentalcar">
<div _ class="inner">
<div _ class="search-area-form same-area">

<div _ class="form-column">
<p _ class="title">인수 도시</p>
<p _ class="text">
<strong _>제주</strong></p></div>

<div _ class="form-column">
<p _ class="title">운전자 연령</p>
<p _ class="text">
<strong _>1995-03-01</strong></p></div>

<div _ class="form-column">
<p _ class="title">인수 일시</p>
<p _ class="text calendar">
<strong _>03.28(화), 08:00</strong></p></div>

<div _ class="form-column">
<p _ class="title">반납 일시</p>
<p _ class="text calendar">
<strong _>03.29(수), 08:00</strong></p></div>

<a _ class="btn-form-search">검색
<br _>변경</a></div></div></div>

</app-car-search-form>


<!--검색창 아래 본문-->
<div class="contents-area">
<!--검색창 바로 아래-->
<app-rent-breadcrumbs class="breadcrumbs" _nghost-serverapp-c364="">
<div _ class="text-article">
<p _ class="text">
<strong _>제주</strong>에서 이용할 렌터카를 선택해 주세요. </p>
<p _ class="sub-text"> 2023.03.28(화) 08:00 - 2023.03.29(수) 08:00 </p></div>
<!-- 오른쪽 상품선택, 결제하기 부분 -->
<ul _ class="step">
	<li _ class="active">
		<p _ class="num">1</p>
		<p _ class="text">상품선택</p></li>
	<li _>
		<p _ class="num">2</p>
		<p _ class="text">결제하기</p></li>
</ul>
</app-rent-breadcrumbs>

<!-- 좌측 검색 필터 섹션 -->
<app-rent-aside-filter class="aside filter" _nghost-serverapp-c367="">
<div _ class="list-filter">

<div _ class="filter-title">
<strong _>결과 내 검색</strong>
<a _ class="icon-link">
<i _ class="icon sm reload"></i>
<span _ class="text">초기화</span></a></div>


<form _ novalidate="" class="ng-untouched ng-pristine ng-valid">
<!-- 검색창 부분 -->
<div _ class="aside-contents-search">

<div _ class="input lg">
<i _ class="icon sm search"></i>
<input _ formcontrolname="keyword" type="text" placeholder="차량명 검색" class="ng-untouched ng-pristine ng-valid"></div>

<a _ class="btn lg inline default">검색</a></div>

<!-- 첫 번째 필터(지역) -->
<div _ class="accordion type2">
<app-accordion-type _ _nghost-serverapp-c366="">
<div _  class="accordion-header active">
<a _  class="accordion-title">이용지역</a></div>

<div _  class="accordion-body">
<ul _  class="checkbox-list">
	
	<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="sl">
		<span _  class="checkbox-control-text" title="서울">
		<span _ >서울</span></span></label>
	</li>
		
		<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="gr">
		<span _  class="checkbox-control-text" title="강릉">
		<span _ >강릉</span></span></label>
	</li>
	
	<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="ys">
		<span _  class="checkbox-control-text" title="여수">
		<span _ >여수</span></span></label>
	</li>
	
	<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="gj">
		<span _  class="checkbox-control-text" title="경주">
		<span _ >경주</span></span></label>
	</li>
	
	<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="bs">
		<span _  class="checkbox-control-text" title="부산">
		<span _ >부산</span></span></label>
 </li>
 
 <li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="jj">
		<span _  class="checkbox-control-text" title="제주">
		<span _ >제주</span></span></label>
 </li>
</ul>

</div></app-accordion-type></div>

<!-- 두 번째 필터(차종) -->
<div _ class="accordion type2">
<app-accordion-type _ _nghost-serverapp-c366="">
<div _  class="accordion-header active">
<a _  class="accordion-title">차종</a></div>

<div _  class="accordion-body">
<ul _  class="checkbox-list">
	<li _ >
		<label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input">
		<span _  title="" class="checkbox-control-text">
		<span _ >전체</span></span></label>
	</li>
	
	<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="car1">
		<span _  class="checkbox-control-text" title="차종1">
		<span _ >차종1</span></span></label>
	</li>
	
	<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="car2">
		<span _  class="checkbox-control-text" title="차종2">
		<span _ >차종2</span></span></label>
	</li>
	
	<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="car3">
		<span _  class="checkbox-control-text" title="차종3">
		<span _ >차종3</span></span></label>
	</li>
	
	<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="car4">
		<span _  class="checkbox-control-text" title="차종4">
		<span _ >차종4</span></span></label>
	</li>
	
	<li _ ><label _  class="checkbox lg">
		<input _  title="" type="checkbox" class="checkbox-control-input" value="car5">
		<span _  class="checkbox-control-text" title="차종5">
		<span _ >차종5</span></span></label>
	</li>
	
</ul>
</div></app-accordion-type></div></form></div>
</app-rent-aside-filter>


<!-- 진짜 본문(article) -->

<div class="contents">
<div class="tab-wrap">
<app-rent-tab-header class="tab-header type2 round border mb20" style="display: block;" _nghost-serverapp-c368="">
	<div _ class="tab-header-outer">
	<a _ class="tab-header-item active"><span _>추천</span></a>
	<a _ class="tab-header-item"><span _>높은 등급</span></a>
	<a _ class="tab-header-item"><span _>낮은 등급</span></a>
	<a _ class="tab-header-item"><span _>높은 가격</span></a>
	<a _ class="tab-header-item"><span _>낮은 가격</span></a></div>
</app-rent-tab-header>

<app-rent-tab-body class="tab-body" _nghost-serverapp-c375="">
<div _ class="tab-pane active">

<!-- 상품 위 검색 결과 섹션 -->
<div class="search-result-header">
<p class="total">
<span>935</span> 개의 상품이 검색되었습니다. </p></div>

<!-- 상품 리스트 -->
<div class="result-card-list">
<!-- 상품 1 -->
<div class="rentalcar-card-item">
<div class="rentalcar-image">
<img alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/239_rc_con_1.jpg"></div>
<div class="rentalcar-information">
<div class="list-item-title"><!---->
<div_ngcontent-serverapp-c375=""><!---->
<strong>무지개렌트카</strong><!----></div>
<p>20~22 모닝 어반 [20~22년식]</p><!----><!----></div>
<p class="name"><strong _>더넥스트스파크</strong>
<strong class="year"> [16~19년식]</strong></p>
<ul class="include">
	<li class="type">Economy</li><li class="person">5인승</li>
	<li class="gear">자동변속</li><li class="fuel">Gasoline</li>
</ul>
<div class="flex-group">
<div class="price"><p class="primary">13,600<span _>원</span></p></div><!----></div>
<div class="btn-group"><a href="car_checkout" class="btn md light hover line">선택</a></div><!----></div></div>


<!-- 상품 2 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/239_rc_con_1.jpg"><!----></div>
<div _ class="rentalcar-information"><!---->
<p _ class="name"><strong _>더넥스트스파크</strong><strong _ class="year"> [16~19년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->

<div _ class="flex-group">
<div _ class="price"><p _ class="primary">25,000<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>

<!-- 상품 3 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/239_rc_con_1.jpg"><!----></div>
<div _ class="rentalcar-information"><p _ class="name"><!----><strong _>로그인렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>더넥스트스파크</strong><strong _ class="year"> [16~19년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li></ul><!---->
<div _ class="flex-group">
<div _ class="price"><p _ class="primary">28,800<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>

<!-- 상품 4 -->
<div _ class="rentalcar-card-item">
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/688_rc_con.jpg"><!----></div>
<div _ class="rentalcar-information"><p _ class="name"><!----><strong _>무지개렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>16~17올뉴모닝</strong><strong _ class="year"> [16~17년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->
<div _ class="flex-group">
<div _ class="price">
<p _ class="primary">13,600<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>

<!-- 상품 5 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/99_rc_con_1.jpg"><!----></div>
<div _ class="rentalcar-information"><!----><p _ class="name"><!----><strong _>무지개렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>레이</strong><strong _ class="year"> [14~17년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->
<div _ class="flex-group">
<div _ class="price"><p _ class="primary">14,100<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>

<!-- 상품 6 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/99_rc_con_1.jpg"><!----></div>
<div _ class="rentalcar-information"><!----><p _ class="name"><!----><strong _>로그인렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>레이</strong><strong _ class="year"> [14~17년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->
<div _ class="flex-group">
<div _ class="price"><p _ class="primary">29,400<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>


<!-- 상품 7 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/99_rc_con_1.jpg"><!----></div>
<div _ class="rentalcar-information"><!---->
<p _ class="name"><!----><strong _>제주사랑렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>레이</strong><strong _ class="year"> [14~17년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->
<div _ class="flex-group">
<div _ class="price"><p _ class="primary">33,900<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>


<!-- 상품 8 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/682_rc_con.jpg"><!----></div>
<div _ class="rentalcar-information"><!----><p _ class="name"><!----><strong _>무지개렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>17~21모닝</strong><strong _ class="year"> [17~21년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->
<div _ class="flex-group">
<div _ class="price"><p _ class="primary">14,100<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>


<!-- 상품 9 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/682_rc_con.jpg"><!----></div>
<div _ class="rentalcar-information"><!----><p _ class="name"><!----><strong _>드림렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>17~21모닝</strong><strong _ class="year"> [17~21년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->
<div _ class="flex-group">
<div _ class="price"><p _ class="primary">19,200<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>


<!-- 상품 10 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/682_rc_con.jpg"><!----></div>
<div _ class="rentalcar-information"><!----><p _ class="name"><!----><strong _>메트로렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>17~21모닝</strong><strong _ class="year"> [17~21년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->
<div _ class="flex-group">
<div _ class="price"><p _ class="primary">21,300<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>


<!-- 상품 11 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/682_rc_con.jpg"><!----></div>
<div _ class="rentalcar-information"><!----><p _ class="name"><!----><strong _>패밀리렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>17~21모닝</strong><strong _ class="year"> [17~21년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->
<div _ class="flex-group">
<div _ class="price"><p _ class="primary">24,900<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div>


<!-- 상품 12 -->
<div _ class="rentalcar-card-item"><!---->
<div _ class="rentalcar-image">
<img _ alt="" src="https://jtns1.jeju.com/images/upload/contents/rc/682_rc_con.jpg"><!----></div>
<div _ class="rentalcar-information"><!----><p _ class="name"><!----><strong _>굿모닝렌트카</strong><!----></p><!---->
<p _ class="name"><strong _>17~21모닝</strong><strong _ class="year"> [17~21년식]</strong></p><!---->
<ul _ class="include">
<li _ class="type">Economy</li><li _ class="person">5인승</li>
<li _ class="gear">자동변속</li><!----><li _ class="fuel">Gasoline</li>
</ul><!---->
<div _ class="flex-group">
<div _ class="price"><p _ class="primary">26,500<span _>원</span></p></div><!----></div>
<div _ class="btn-group"><a _ class="btn md light hover line">선택</a></div><!----></div></div><!---->

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


</div></div></div></div></div>
</app-car-page>

</body>
</html>