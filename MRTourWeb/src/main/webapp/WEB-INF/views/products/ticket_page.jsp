<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/css/ticket_page.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="resources/js/cart.js" charset="UTF-8"></script>
<script type="text/javascript" src="resources/js/product.js" charset="UTF-8"></script>
<title>${product.prd_name}</title>
</head>
<body>
<script>
			// 구매수량
			$("#buy_quantity").keyup(function(e){
				var regNumber = /^([0-9]{2})$/;
				var str = $(this).val();
				if(!regNumber.test(str)) {
					var res = str.substring(0, str.length-1);
					$(this).val(res);
				}
			});
		</script>

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

<main class="offer-detail">


<div id="Offer-react-component">
<div class="Offer_container">

<!-- 본문 시작 -->

<!-- 제목 ~ 본문 끝까지 -->
<div class="Grid_container">

<!-- article + aside -->
<div class="Grid_row Offer_layout">

<!-- article -->
<article class="Offer_article">
<!-- article (header) -->
<header class="OfferHeader_container">
<h1 class="OfferHeaderTitle_container">${product.prd_name}</h1>
</header>

<!-- 구분선 -->
<div id="OFFER-NAVBAR-START"></div>
<ul class="OfferHeaderTags_container">
<li>
<img src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/ic_ignore_wait_confirm-698c42a00aa62c7e744638173f1f5fc20c787daf5765b5e21d8be8ef60b6c0c4.png" width="24" height="24" alt="즉시확정">
<strong>즉시확정</strong> 구매 즉시 예약 확정 (일부 상품 이용일 추가 예약 필요)</li></ul>
<ul class="OfferMeta_container"> <!-- e-ticket, 유효기간, 한국어 부분  -->
<li class="OfferMetaItem_container">
<img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_meta_eticket_md_gray_700.svg" alt="eticket" class="OfferMetaItem_icon">
<span class="OfferMetaItem_label">e-ticket</span></li>
<li class="OfferMetaItem_container">
<img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_meta_calendar_md_gray_700.svg" alt="calendar" class="OfferMetaItem_icon">
<span class="OfferMetaItem_label">유효기간(~2023.04.30) 내 사용</span></li>
<li class="OfferMetaItem_container">
<img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_meta_language_md_gray_700.svg" alt="language" class="OfferMetaItem_icon">
<span class="OfferMetaItem_label">${product.city_no}</span></li>
</ul>

<!-- 구분선 -->
<div class="OfferIntro_container"></div>

<!-- 티켓 선택 구역 -->
<section class="OfferSectionBox_container OfferSectionBox_noBorder OfferSectionBox_noPadding" id="OFFER-SECTION-TICKET">
<div class="OfferSectionBox_body OfferOptionSection_container">
<h2 class="OfferSectionBox_title">티켓 선택</h2>
<div><div class="OfferOptionSelector_container" id="OFFER-SECTION-TICKET">
<div><div class="">
<!-- 티켓 선택 구역 중 결제하기 윗부분 -->
<div class="OfferOption_optionWrapper">
<div class="OfferOption_options">
<div class="OfferOptionItem_container">
<div class="OfferOptionItemHeader_container">
<h3 class="OfferOptionItemHeader_title">알파카월드 1인입장권</h3>
<div class="OfferOptionItemHeader_description">
<ul class="OfferOptionDescription_container"></ul></div></div>
<div class="OfferOptionItem_body">
<div class="OfferOptionItemPrice_container">
<div class="OfferOptionItemPrice_row OfferOptionItemPrice_margin">
<span class="OfferOptionItemPrice_refund">미사용 전액환불</span></div>
<div class="OfferOptionItemPrice_row">
<span class="OfferOptionItemPrice_unit">1명</span>
<span class="OfferOptionItemPrice_price"><fmt:formatNumber value="${product.prd_price}" pattern="#,###"/></span>
<span class="OfferOptionItemPrice_symbol">원</span><br><br>

<select id="prd_opt">
							<c:forEach items="${fn:split(product.prd_opt, ',')}" var="opt">
								<option value="${opt}">${opt}</option>
							</c:forEach>
						</select>
										
<input type="number" id="buy_quantity" min="1" maxlength="2" max="99" value="1" oninput="mxNum(this)" />
					<script>
						function mxNum(object) {
							if (object.value.length > object.maxLength) {
								object.value = object.value.slice(0, object.maxLength)
							}
						}
					</script><br><br>
<input type="hidden" name="prd_img" id="prd_img" value="${product.prd_img}" />
<input type="hidden" name="member_id" id="member_id" value="${member.member_id}" />
<input type="hidden" name="prd_id" id="prd_id" value="${product.prd_id}" />
<input type="hidden" name="prd_opt" id="prd_opt" value="${product.prd_opt}" />

<input type="button" name="buy" id="buy" onclick="buyProduct()" value="구매하기" />&nbsp;&nbsp;&nbsp;
<input type="button" name="cart" id="cart" onclick="insertCart()" value="장바구니" />
<input type="hidden" name="hiddenbtn" id="hiddenbtn" value="prdpage" />

</div></div></div></div></div></div></div></div></section>



<!-- 상품 소개 이미지 -->
<section class="OfferSectionBox_container OfferSectionBox_noBorder" id="OFFER-SECTION-INTRODUCTION">
<div class="OfferSectionBox_body">
<div>
<div class="OfferFlexibleBox_container">
<div class="OfferFlexibleBox_body">
<img src="https://d2ur7st6jjikze.cloudfront.net/offer_descriptive_images/40487/343523_medium_1677834930.jpg?1677834930" class="OfferDetailSection_image">
<img src="https://d2ur7st6jjikze.cloudfront.net/offer_descriptive_images/40487/343534_medium_1677834988.jpg?1677834988" class="OfferDetailSection_image">
<img src="https://d2ur7st6jjikze.cloudfront.net/offer_descriptive_images/40487/343536_medium_1677834993.jpg?1677834993" class="OfferDetailSection_image">
</div>
</div></div></div></section>


<!-- 이용안내 -->
<section class="OfferSectionBox_container" id="OFFER-SECTION-GUIDANCE">
<div class="OfferSectionBox_body">
<h2 class="OfferSectionBox_title">이용 안내</h2>
<!-- 이용 안내 - 이용 시간 -->
<div><div class="OfferContents_container">
<h3 class="OfferContents_title">이용 시간</h3>
<p class="OfferContents_contents">- 운영시간 : 10:00~18:00 / 힐링산책 10:00~17:00 (주중/주말공통)
<br class="">- 입장마감 : 16:30
<br class="">- 휴무 : 휴무 없음</p></div>

<!-- 이용 안내 - 위치 안내 -->
<div class="OfferContents_container">
<h3 class="OfferContents_title">위치 안내</h3>
<div class="OfferUseMeetingPoint_container">
<p class="OfferUseMeetingPoint_description">강원 홍천군 화촌면 풍천리 310</p>
</div></div>

<!-- 이용 안내 - 사용 방법 -->
<div class="OfferContents_container">
<h3 class="OfferContents_title">사용 방법</h3>
<div class="OfferFlexibleBox_container">
<div class="OfferFlexibleBox_body">
<p class="OfferContents_contents">- 유효기간: ~ 2023.04.30
<br class="">- 공휴일 방문전 현장문의<br class=""><br class="">- 1. 최소 이용 1시간 전 구매 (당일구매/당일사용 가능)
<br class="">- 2. 무인발권기 이용<br class="">  - 무인발권기에서 휴대폰번호 조회 후 티켓 출력
<br class="">  - ※ 티켓출력과 동시에 사용처리 됩니다.<br class="">- 3. 입구에서 출력된 티켓 스캔 후 입장</p></div>
<div class="OfferFlexibleBox_more"></div></div></div>

<!-- 이용 안내 - 추가 정보 -->
<div class="OfferContents_container">
<h3 class="OfferContents_title">추가정보</h3>
<div class="OfferFlexibleBox_container">
<div class="OfferFlexibleBox_body" style="max-height: 240px;">
<p class="OfferContents_contents">[추가정보]
<br class="">- 알파카야 이리와 이벤트는 매주 토,일요일/공휴일 오전 10시 10분에 시작이며, 10시까지 입장해주셔야 참여 가능하십니다.
<br class="">- 알파카월드 매표소 마감시간 이후에는 티켓 구매 또는 이용하실 수 없습니다.
<br class="">- 음식물 및 동물들의 안전을 위해 반려동물의 출입이 제한됩니다. 양해바랍니다.(맹인 안내견 제외)
<br class="">- 분실물 문의는 1899-2250으로 연락 주시면 신속하게 처리해 드리겠습니다.
<br class="">- 동물 알레르기가 있으신 분들은 체험 보다는 관람 하시는 것을 권유드립니다.
<br class="">- 주차공간이 충분히 마련되어 있으며 주차비는 무료입니다.
<br class="">- 알파카와 힐링산책은 현장에서 별도 구매가 필요합니다.
<br class="">- 먹이체험시, 필요한 먹이는 파카코인 구매 후 코인을 이용해 구매부탁드립니다.(파카코인 1개당 먹이주기 체험 1회분)
<br class="">- 파카코인은 매표소(카드및 현금 가능)/체험존파카코인교환기(현금만가능)를 통해 구매 가능합니다.(1,000원당 파카코인1개 지급)
<br class="">
<br class="">[업체정보]
<br class="">• 업체이름 : [홍천]알파카월드
<br class="">• 업체주소 : 강원 홍천군 화촌면 풍천리 310
<br class="">• 문의전화 : 1899-2250
<br class="">- 운영시간 : 10:00~18:00 / 힐링산책 10:00~17:00 (주중/주말공통)
<br class="">- 입장마감 : 16:30
<br class="">• 휴 무 : 휴무없음
<br class="">• 무료입장나이 : 36개월 미만 (유료체험시설 또는 유아시설 이용 시 별도이용요금)
<br class="">   * 증빙서류 : 아기수첩, 의료보험증,등본, 가족관계 등록부, 여권 등
<br class="">• 주차가능여부 : 가능 / 무료</p>
</div></div></div></div></div></section>

<!-- 취소 및 환불 규정 -->
<section class="OfferSectionBox_container" id="OFFER-SECTION-REFUND">
<div class="OfferSectionBox_body">
<h2 class="OfferSectionBox_title">취소 및 환불 규정</h2>
<div><div class="OfferContents_container">
<div class="OfferFlexibleBox_container">
<div class="OfferFlexibleBox_body">
<p class="OfferContents_contents">- 유효기간 내 미사용티켓 100% 환불가능
<br class="">- 유효기간 후 100%환불가능<br class="">- 사용한 티켓은 환불 불가능합니다.</p></div>
<div class="OfferFlexibleBox_more"></div></div></div></div></div></section>

<!-- 마지막 구분선 -->
<div id="OFFER-NAVBAR-END"></div>
</article>


<!-- aside -->

<aside class="Offer_side" data-sticky-container="true">
<ul class="OfferSideBar_container">
<li class="OfferSideBar_row">
<div class="OfferSideBarMain_container">
<div class="OfferSideBarMain_top">
<div class="OfferSideBarMain_price">
<div class="OfferPrice_container">

<div class="OfferPrice-module__bottom--pKut4">
<strong class="OfferPrice_price"><fmt:formatNumber value="${product.prd_price}" pattern="#,###"/>원</strong>
<span class="OfferPrice_suffix">부터</span></div></div>
</div>
<div class="OfferSideBarMain_row">
<button type="button" class="Button_button Button_primary Button_large Button_block">
<img class="OfferSideBarMainButton_buttonIcon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53
My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDEwIDE4Ij4KICAgIDxwYXRoIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0iZ
XZlbm9kZCIgZD0iTTMuMzMzIDEwLjM4NUgwTDYuNjY3IDB2Ny42MTVIMTBMMy4zMzMgMTh6Ii8+Cjwvc3ZnPgo=" alt="즉시사용">
<span class="OfferSideBarMainButton_buttonLabel">티켓 선택</span></button>
<p class="OfferSideBarMainButton_immediately">
<img class="OfferSideBarMainButton_icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vc
mcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDEwIDE4Ij4KICAgIDxwYXRoIGZpbGw9IiNGRkJGMDAiIGZpbGwtcnVsZT0iZXZ
lbm9kZCIgZD0iTTMuMzMzIDEwLjM4NUgwTDYuNjY3IDB2Ny42MTVIMTBMMy4zMzMgMTh6Ii8+Cjwvc3ZnPgo=" alt="">
<span class="OfferSideBarMainButton_desc">구매 후 즉시 확정됩니다.</span>
<a class="OfferSideBarMainButton_question" href="/about/instantbooking" target="_blank">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld
0JveD0iMCAwIDE2IDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHJlY3Qgd2lkdGg9IjE1IiBoZWlnaHQ9IjE1Ii
B4PSIuNSIgeT0iLjUiIHN0cm9rZT0iIzg0OEM5NCIgcng9IjcuNSIvPgogICAgICAgIDx0ZXh0IGZpbGw9IiM4NDhDOTQiIGZvbnQtZmFtaWx5PSJTRlByb1RleHQ
tU2VtaWJvbGQsIFNGIFBybyBUZXh0IiBmb250LXNpemU9IjExIiBmb250LXdlaWdodD0iNTAwIj4KICAgICAgICAgICAgPHRzcGFuIHg9IjUiIHk9IjEyIj4/PC90
c3Bhbj4KICAgICAgICA8L3RleHQ+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="즉시사용"></a></p></div>

<!-- 위시리스트에 담기 부분 -->
<div class="OfferSideBarMain_row">
<button type="button" class="Button_button Button_outline Button_medium Button_block">
<svg class="WishIcon_container" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"></svg>
<span class="OfferSideBarMainWishlist_label">위시리스트에 담기</span>
</button>
<p class="OfferSideBarMainWishlist_desc">306명이 이 상품을 위시리스트에 담았습니다.</p></div></div></div></li>

<!-- 안심하고 구매하세요 부분 -->
<li class="OfferSideBar_row"><div>
<div class="BoxItem_container">
<img src="https://d2ur7st6jjikze.cloudfront.net/cancel_policy_badge/1_thumb_1602641047.png?1602641047" class="OfferBadge_icon">
<div class="BoxItem_body">
<h3 class="BoxItem_title">안심하고 구매하세요!</h3>
<p class="BoxItem_content">미사용시 100% 환불 가능한 상품입니다.</p></div></div></div></li>
</ul>
</aside>


<!-- 상품번호 섹션 -->
<div class="offer-container_prd_id">
<p class="offer-container_prd_id-content">상품번호: <span>${product.prd_id}</span></p></div></div>


</main>

</body>
</html>