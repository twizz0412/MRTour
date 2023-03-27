<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/hotel_page.css" />
<script src = "resources/js/hotel_page.js"></script>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA3ZtWcrT0oQhZ7sytTylhtODsVqXqjL1A&callback=googleMap"></script>

<title>골드원 호텔 &amp; 스위트</title>
</head>
<body>

<body style="display: flex;">
<div id="__next">
<div style="position:fixed;z-index:99999999;top:16px;left:16px;right:16px;bottom:16px;
pointer-events:none" class="fixed"></div>

<main class="main">
<div class="entire">


<!-- 처음부터 편의 시설, 숙소 위치 위까지 -->
<div class="upper">
<!-- 맨 위 검색창 -->
<div class="searchArea">
<div class="search">

<!-- 여행지 -->
<div class="section selectionArea" data-section="place">
<div class="place">
<div class="selectionLabel">
<span class="selectionSpan">여행지</span>
<span class="selectionSpan2">골드원 호텔 &amp; 스위트</span></div>
<button class="closeBtn">
<!-- 
<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" 
style="color:#848c94;opacity:0.5" role="presentation" height="20" width="20" 
xmlns="http://www.w3.org/2000/svg"><path d="M7.72505 16.275C7.92505 16.475 8.17105 16.575 8.46305 
16.575C8.75438 16.575 9.00005 16.475 9.20005 16.275L12 13.475L14.825 16.3C15.025 16.5 15.2667 16.
5957 15.55 16.587C15.8334 16.579 16.075 16.475 16.275 16.275C16.475 16.075 16.575 15.829 16.575 
15.537C16.575 15.2457 16.475 15 16.275 14.8L13.475 12L16.3 9.17499C16.5 8.97499 16.5957 8.73332 
16.587 8.44999C16.579 8.16665 16.475 7.92499 16.275 7.72499C16.075 7.52499 15.8294 7.42499 15.538 
7.42499C15.246 7.42499 15 7.52499 14.8 7.72499L12 10.525L9.17505 7.69999C8.97505 7.49999 8.73338 
7.40399 8.45005 7.41199C8.16672 7.42065 7.92505 7.52499 7.72505 7.72499C7.52505 7.92499 7.42505 
8.17065 7.42505 8.46199C7.42505 8.75399 7.52505 8.99999 7.72505 9.19999L10.525 12L7.70005 14.825C7.
50005 15.025 7.40438 15.2667 7.41305 15.55C7.42105 15.8333 7.52505 16.075 7.72505 16.275ZM12 
22.2C10.5834 22.2 9.25405 21.9333 8.01205 21.4C6.77072 20.8667 5.69172 20.1417 4.77505 19.225C3.
85838 18.3083 3.13338 17.2293 2.60005 15.988C2.06672 14.746 1.80005 13.4167 1.80005 12C1.80005 
10.5833 2.06672 9.25399 2.60005 8.01199C3.13338 6.77065 3.85838 5.69165 4.77505 4.77499C5.69172 
3.85832 6.77072 3.13332 8.01205 2.59999C9.25405 2.06665 10.5834 1.79999 12 1.79999C13.4167 
1.79999 14.746 2.06665 15.988 2.59999C17.2294 3.13332 18.3084 3.85832 19.225 4.77499C20.1417 
5.69165 20.8667 6.77065 21.4 8.01199C21.9334 9.25399 22.2001 10.5833 22.2001 12C22.2001 13.4167 
21.9334 14.746 21.4 15.988C20.8667 17.2293 20.1417 18.3083 19.225 19.225C18.3084 20.1417 17.2294 
20.8667 15.988 21.4C14.746 21.9333 13.4167 22.2 12 22.2Z"></path></svg> --></button></div></div>

<div class="gap"></div>

<!-- 일정 선택 -->
<div class="section selectionArea" data-section="date">
<div class="selection">
<div class="selectionLabel">
<span class="selectionSpan">일정</span>
<span class="selectionSpan2">04월 10일 (월) - 04월 11일 (화)</span></div>
<button class="closeBtn">
<!--
<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" 
style="color:#848c94;opacity:0.5" role="presentation" height="20" width="20" 
xmlns="http://www.w3.org/2000/svg">
<path d="M7.72505 16.275C7.92505 16.475 8.17105 16.575 8.46305 16.575C8.75438 16.575 9.00005 
16.475 9.20005 16.275L12 13.475L14.825 16.3C15.025 16.5 15.2667 16.5957 15.55 16.587C15.8334 
16.579 16.075 16.475 16.275 16.275C16.475 16.075 16.575 15.829 16.575 15.537C16.575 15.2457 
16.475 15 16.275 14.8L13.475 12L16.3 9.17499C16.5 8.97499 16.5957 8.73332 16.587 8.44999C16.579 
8.16665 16.475 7.92499 16.275 7.72499C16.075 7.52499 15.8294 7.42499 15.538 7.42499C15.246 7.42499 
15 7.52499 14.8 7.72499L12 10.525L9.17505 7.69999C8.97505 7.49999 8.73338 7.40399 8.45005 
7.41199C8.16672 7.42065 7.92505 7.52499 7.72505 7.72499C7.52505 7.92499 7.42505 8.17065 7.42505 
8.46199C7.42505 8.75399 7.52505 8.99999 7.72505 9.19999L10.525 12L7.70005 14.825C7.50005 15.025 
7.40438 15.2667 7.41305 15.55C7.42105 15.8333 7.52505 16.075 7.72505 16.275ZM12 22.2C10.5834 22.2 
9.25405 21.9333 8.01205 21.4C6.77072 20.8667 5.69172 20.1417 4.77505 19.225C3.85838 18.3083 
3.13338 17.2293 2.60005 15.988C2.06672 14.746 1.80005 13.4167 1.80005 12C1.80005 10.5833 2.06672 
9.25399 2.60005 8.01199C3.13338 6.77065 3.85838 5.69165 4.77505 4.77499C5.69172 3.85832 6.77072 
3.13332 8.01205 2.59999C9.25405 2.06665 10.5834 1.79999 12 1.79999C13.4167 1.79999 14.746 2.06665 
15.988 2.59999C17.2294 3.13332 18.3084 3.85832 19.225 4.77499C20.1417 5.69165 20.8667 6.77065 21.4
 8.01199C21.9334 9.25399 22.2001 10.5833 22.2001 12C22.2001 13.4167 21.9334 14.746 21.4 15.988C20.
 8667 17.2293 20.1417 18.3083 19.225 19.225C18.3084 20.1417 17.2294 20.8667 15.988 21.4C14.746 
 21.9333 13.4167 22.2 12 22.2Z"></path></svg>  --> </button></div></div>
 
<div class="gap"></div>

<!-- 숙박 인원 -->
<div class="section selectionArea" data-section="guest">
<div class="selection">
<div class="selectionLabel">
<span class="selectionSpan">숙박 인원</span>
<span class="selectionSpan2">성인 2명</span></div></div></div>

<!-- 숙소 검색 버튼 -->
<div class="searchBtnArea">
<button class="searchBtn">
<div class="btnTitle">
<span class="btnSpan">숙소 검색</span></div></button></div></div></div>


<!-- 메인 사진 섹션 -->
<div class="main_pic">
<div class="main_pic2">
<div class="pic_grid">
<img src="https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2023/02/03/ugm0/WtmkOqxilm.jpg?
width=1080&amp;quality=90" loading="lazy" class="grid_img">
<img src="https://i.travelapi.com/lodging/38000000/37630000/37622900/37622802/ad72606c_z.jpg" 
loading="lazy" class="grid_img">
<img src="https://i.travelapi.com/lodging/38000000/37630000/37622900/37622802/662d0752_z.jpg" 
loading="lazy" class="grid_img">
<img src="https://i.travelapi.com/lodging/38000000/37630000/37622900/37622802/adb19fdd_z.jpg" 
loading="lazy" class="grid_img">
<img src="https://i.travelapi.com/lodging/38000000/37630000/37622900/37622802/a655586c_z.jpg" 
loading="lazy" class="grid_img"></div>
<button class="moreBtn">
<div class="btnTitle">
<span class="moreBtnSpan">
<span class="btnSpan2">사진 모두 보기</span></span></div></button></div><div></div></div>

<!-- 사진 아래 호텔명, 가격 표시된 부분 -->
<div class="main_info">
<div class="main_info_left">
<div class="hotelNameArea">
<div class="hotelName">
<div class="content">
<span class="hotelNameSpan hotelNameSpan2">골드원 호텔 &amp; 스위트</span></div>

<div class="content">
<span class="hotelRates">4성급 · 호텔</span></div></div></div>

<div class="hotelPriceArea">
<div class="hotelPriceArea2">
<span class="hotelBold">216,080원/박</span></div></div></div>

<!-- 객실 선택 부분 -->
<div class="main_info_right">

<button class="submitBtn">
<div class="btnTitle">
<span class="BtnSpan">
<span class="btnSpan3">객실 선택</span></span></div></button></div></div>

</div>

<!-- 편의 시설, 숙소 위치부터 끝까지 -->
<div class="lower">

<!-- 편의 시설부터 객실 선택 위까지 -->
<div class="lower-1">
<div class="lower-1-upper">
<!-- 편의 시설 -->
<div class="convenienceArea">
<div class="info">
<div class="css-0">
<span class="infoTitle">편의 시설</span></div>

<div class="convenience_container">

<div class="convenience">
<div class="content"><img alt="24시간 운영 프런트 데스크" src="resources/img/icon/24hr.png" class="iconImg"></div>
<div class="content"><span class="detailSpan moreBtnSpan2">24시간 운영 프런트 데스크</span></div></div>

<div class="convenience">
<div class="content"><img alt="수영장" src="resources/img/icon/indoorpool.png" class="iconImg"></div>
<div class="content"><span class="detailSpan moreBtnSpan2">수영장</span></div></div>

<div class="convenience">
<div class="content"><img alt="전기차 충전소" src="resources/img/icon/evcharge.png" class="iconImg"></div>
<div class="content"><span class="detailSpan moreBtnSpan2">전기차 충전소</span></div></div>

<div class="convenience">
<div class="content"><img alt="무료 셀프 주차" src="resources/img/icon/selfparking.png" class="iconImg"></div>
<div class="content"><span class="detailSpan moreBtnSpan2">무료 셀프 주차</span></div></div>

<div class="convenience">
<div class="content"><img alt="객실 내 장애인 편의 시설" src="resources/img/icon/wheelchair.png" class="iconImg"></div>
<div class="content"><span class="detailSpan moreBtnSpan2">객실 내 장애인 편의 시설</span></div></div>

<div class="convenience">
<div class="content"><img alt="피트니스 시설" src="resources/img/icon/spa.png" class="iconImg"></div>
<div class="content"><span class="detailSpan moreBtnSpan2">피트니스 시설</span></div></div>

<div class="convenience">
<div class="content"><img alt="회의 공간" src="resources/img/icon/concierge.png" class="iconImg"></div>
<div class="content"><span class="detailSpan moreBtnSpan2">회의 공간</span></div></div>

<div class="convenience">
<div class="content"><img alt="아케이드/게임룸" src="resources/img/icon/casino.png" class="iconImg"></div>
<div class="content"><span class="detailSpan moreBtnSpan2">아케이드/게임룸</span></div></div></div></div></div>

<!-- 숙소 위치 -->
<div class="locationArea">
<div class="info">
<div class="info_title"><span class="infoTitle">숙소 위치</span></div>
<div class="mapArea"><div class="css-0">
<div class="map">
<img alt="Google Map" src="https://maps.googleapis.com/maps/api/staticmap?size=400x200&amp;zoom=14&amp;scale=2&amp;center=33.244601,126.522142&amp;key=AIzaSyA3ZtWcrT0oQhZ7sytTylhtODsVqXqjL1A&amp;signature=SkCR3jGPf5Ma1NcepLU9jjIhSNs%3D" id="gooleMap" class="gooleMap">
<img alt="33.244601,126.522142" src="resources/img/icon/location.svg" width="46" height="53" decoding="async" data-nimg="1" class="houseIcon" loading="lazy" style="color:transparent">

</div></div>

<!-- 주소 -->
<div class="content">
<span class="hotelAddress">1032, Ieodo-ro, Seogwipo, Jeju, 63571</span>
</div></div></div></div></div>



<!-- 숙소 정보 섹션 -->
<div class="lower-1-lower">
<div class="infoSection">
<div class="infoSectionTitle">
<span class="infoSectionTitleSpan">숙소 정보</span></div>

<div class="infoContent">
<div height="100%" class="everyContent">

<div class="contentBox">
<div><span class="contentTitle">골드원 호텔 &amp; 스위트</span></div>
<div><span class="contentContent">Seri World 부근에 위치</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">숙소 소개</span></div>
<div><span class="contentContent">서귀포 지역에 위치한 GoldOne Hotel N Suites에서 제주도의 탐험을 시작하세요. 
본 숙소는 편안한 숙박에 필요한 많은 것들을 갖추고 있습니다. 본 숙소에서 Wi-Fi (무료/전 객실), 전기 자동차 충전소, 일일 청소 서비스, 기념품 가게, 
휠체어 접근 가능 등을 즐길 수 있습니다. 객실은 아늑하게 디자인되어 있으며, 일부 객실에서는 편안한 투숙을 위한 평면 TV, 추가 화장실, 옷걸이, 무료
 인스턴트 커피, 무료 차 등을 이용할 수 있습니다. 등산로, 온수 욕조, 피트니스센터, 실외 수영장, 놀이터 등과 같은 여가 시설을 통해 즐거운 시간을 보낼
  수 있습니다. 본 숙소(GoldOne Hotel N Suites)의 편리함과 안락함은 제주도 여행을 완벽하게 만들어드립니다.</span></div></div>
  
<div class="contentBox">
<div><span class="contentTitle">위치 정보</span></div>
<div><span class="contentContent">서귀포(서귀포시)에 위치한 골드원 호텔 &amp; 스위트에 숙박하실 경우 차로 5분 정도 
이동하면 Seri World 및 Oedolgae에 가실 수 있습니다.  이 4성급 호텔에서 서귀포 매일 올레 시장까지는 4.3km 떨어져 있으며, 14.6km 거리에는 한라산국립공원도 있습니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">시설 및 제공 서비스</span></div>
<div><span class="contentContent">헬스클럽 및 야외 수영장 같은 레크리에이션 시설을 놓치지 말고 즐기세요. 이 호텔에는
 콘시어지 서비스 및 아케이드/게임룸도 마련되어 있습니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">객실 정보</span></div>
<div><span class="contentContent">51개 객실에는 냉장고 및 평면 TV도 갖추어져 있어 편하게 머무실 수 있습니다. 
필로우탑 침대에는 오리/거위털 이불 및 고급 침구 등이 갖추어져 있습니다. 객실에 딸린 전용 발코니에서 전망을 감상하실 수 있습니다. 무료 무선 인터넷도 
지원되며 케이블 프로그램을 시청하실 수 있습니다. 욕실에는 샤워, 고급 세면용품, 비데 등이 마련되어 있습니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">식당 소개</span></div>
<div><span class="contentContent">호텔의 레스토랑에서 맛있는 식사를 즐겨보세요. 커피숍/카페에서는 스낵이 제공되며, 
편하게 객실에서 룸서비스(이용 시간 제한)를 이용하실 수도 있습니다. 풀사이드 바에서는 좋아하는 음료를 마시며 갈증을 해소하실 수 있어요. 아침 식사(뷔페)를 
매일 7:30 ~ 10:30에 유료로 이용하실 수 있습니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">편의 시설</span></div>
<div><span class="contentContent">대표적인 편의 시설과 서비스로는 24시간 운영 비즈니스 센터, 드라이클리닝/세탁 서비스, 
24시간 운영되는 프런트 데스크 등이 있습니다. 서귀포에서의 행사를 계획하시나요? 이 호텔에는 회의 공간 등을 비롯하여 93 제곱미터 크기의 시설이 마련되어 
있습니다. 시설 내에서 무료 셀프 주차 이용이 가능합니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">주변 정보</span></div>
<div><span class="contentContent">거리는 0.1km 단위로 최대한 가깝게 표시됩니다. 

Seri World - 1.4km 
석부작 박물관 - 1.6km 
제주워터월드 - 2.4km 
제주월드컵경기장 - 2.5km 
황우지 해안 열두 굴 - 3km 
Oedolgae - 3.1km 
천지연 폭포 - 3.4km 
고근산 - 3.4km 
Gidang Art Museum - 3.6km 
삼매봉 - 3.8km 
이중섭거리 - 4.2km 
LeeJoongSeop Art Museum - 4.3km 
서귀포 매일 올레 시장 - 4.3km 
새연교 - 4.6km 
엉또폭포 - 4.6km 

가장 가까운 주요 공항은 제주국제공항 (CJU)이며, 42.3km 거리에 있습니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">공인 등급</span></div>
<div><span class="contentContent">고객 편의를 위해 저희 등급 시스템을 기준으로 해당 정보를 제공했습니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">서비스 지원 언어</span></div>
<div><span class="contentContent">한국어 영어</span></div></div></div>

<!-- 더보기 -->
<div class="gradation"></div></div>
<div><button class="moreContentBtn">
<div class="btnTitle"><span class="BtnSpan">더보기</span></div></button></div></div>


<!-- 숙소 정책 -->
<div class="infoSection">
<div class="infoSectionTitle">
<span class="infoSectionTitleSpan">숙소 정책</span></div>

<div class="policyBox">
<div height="100%" class="everyContent">

<div class="contentBox">
<div><span class="contentTitle">체크인/체크아웃</span></div>
<div><span class="contentContent">- 체크인 : 15:00 부터 
- 체크아웃 : 11:00 까지</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">알아두실 사항</span></div>
<div><span class="contentContent">[뷔페 조식 또는 룸서비스 조식 요금]
성인 (13세 이상): KRW 32,000 (사전 예약 시 KRW 26,000)
아동 (37개월 이상 ~ 12세): KRW 26,000 (사전 예약 시 KRW 19,000 )
* 룸서비스 미국식 조식: 쥬스, 빵, 달걀, 햄, 커피

 
 간이침대 요금은 1인당 1박 기준 KRW 20,000 이며 현장결제입니다. 간이침대 이용을 원하는 투숙객은 예약 확정서 수신 후 숙소로 연락하시기 바랍니다.
추가 인원에 대한 요금이 부과될 수 있으며, 이는 숙박 시설 정책에 따라 다릅니다.
체크인 시 부대 비용 발생에 대비해 정부에서 발급한 사진이 부착된 신분증과 신용카드, 직불카드 또는 현금으로 보증금이 필요할 수 있습니다.
특별 요청 사항은 체크인 시 이용 상황에 따라 제공 여부가 달라질 수 있으며 추가 요금이 부과될 수 있습니다. 또한, 반드시 보장되지는 않습니다.
유아용 침대, 간이/추가 침대, 소파베드 등을 예약하시려는 고객께서는 이 숙박 시설에 미리 연락해 주셔야 합니다. 
이 숙박 시설은 안전을 위해 소화기, 연기 감지기, 구급상자 등을 갖추고 있습니다.
이 목적지의 최신 코로나19 여행 요건 및 시행 중인 조치를 여행 전에 확인해 주세요.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">특별 체크인 지침</span></div>
<div><span class="contentContent">도착 시 프런트 데스크 직원이 도와드립니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">기타 선택 사항</span></div>
<div><span class="contentContent">뷔페아침 식사 요금: 성인 KRW 26000, 어린이 KRW 19000(대략적인 금액)               
추가 요금 지불 시 늦은 체크아웃 가능(객실 이용 상황에 따라 다름)   
간이 침대 이용 요금: 1박 기준, KRW 20000.0             
위 목록에 명시되지 않은 다른 항목이 있을 수 있습니다. 요금 및 보증금은 세전 금액일 수 있으며 변경될 수 있습니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">반려 동물</span></div>
<div><span class="contentContent">반려동물 동반 불가</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">기타 정책</span></div>
<div><span class="contentContent">금연 숙박 시설</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">현장 결제 수단</span></div>
<div><span class="contentContent">직불카드
현금 결제 가능
Visa, Mastercard, American Express, JCB International, Discover, UnionPay, Diners Club</span></div></div></div>

<!-- 더보기 -->
<div class="gradation"></div></div>
<div><button class="moreContentBtn">
<div class="btnTitle"><span class="BtnSpan">더보기</span></div></button></div></div>


<!-- 보건 & 안전 섹션 -->
<div class="infoSection">
<div class="infoSectionTitle">
<span class="infoSectionTitleSpan">보건 &amp; 안전</span></div>

<div class="policyBox">
<div height="100%" class="everyContent">

<div class="contentBox">
<div><span class="contentTitle">청결 및 안전</span></div>
<div><span class="contentContent">수영장 이용 시간은 9:00 ~ 21:30입니다.
이 숙박 시설은 현재 강화된 청소 및 고객 안전 조치를 시행 중입니다.
청소 시 소독제를 사용하고, 고객 숙박 간에 접촉이 많은 표면을 소독하며 침대 시트 및 타월을 60℃ 이상에서 세탁합니다.
고객의 안전을 위해 사회적 거리두기, 숙박 시설 직원의 개인 보호 장비 착용, 정기적으로 직원 체온 측정, 고객 체온 측정 가능, 
고객에게 손 소독제 제공 등의 조치를 시행 중입니다. 
개별 포장된 음식 옵션이 아침 식사와 룸서비스를 통해 제공됩니다.
이 숙박 시설은 세스코(한국)의 청소 및 소독 지침을 준수합니다.</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">청소 &amp; 소독</span></div>
<div><span class="contentContent">지원 대상 체온 검사를 정기적으로 실시함
고객 체온 검사 실시 가능
침구 및 타월을 60°C 이상의 고온으로 세탁함
자주 만지는 표면을 소독제로 청소함
숙박 시설에서 현재 고객 안전 조치 시행 중
숙박 시설에서 지역 위생 지침을 따름 Safe Tourism Certified(스페인)
숙박 시설에서 현재 강화된 청소 조치 시행 중</span></div></div>

<div class="contentBox">
<div><span class="contentTitle">사회적 거리두기</span></div>
<div><span class="contentContent">숙박 시설을 소독제로 청소함
직원이 개인 보호 장비 착용함
고객에게 무료 손 소독제 제공
사회적 거리두기 시행 중</span></div></div></div>

<!-- 더보기 -->
<div class="gradation"></div></div>
<div><button class="moreContentBtn">
<div class="btnTitle">
<span class="BtnSpan">더보기</span></div></button></div></div></div></div>



<!-- 객실 선택 섹션 -->
<div class="lower-2">
<div class="lower-2-Container">

<div class="lower-2-upper">
<span class="infoTitle">객실 선택</span>

<div class="lower-2-upper-right">
<div class="mrt-detail-room-schedule schedule"></div>
<div class="dateArea">
<span class="choseDate">04월 10일 (월) - 04월 11일 (화)</span></div>

<button class="changeDate">
<div class="btnTitle">
<span class="moreBtnSpan">
<span class="moreBtnSpan2">일정 변경</span></span></div></button></div></div>

<!-- 전체 객실 -->
<div class="room_entire">
<!-- 룸 1 -->
<div class="each_room">
<div class="room_title"><span class="hotelBold">Premier Ocean View Double Room</span></div>
<div class="room_content">
<div class="room_content_left">
<div class="left_entire">
<div class="room_pic">
<img src="https://pix8.agoda.net/hotelImages/7385346/-1/06bf918ece1248fefd93215e7a4a81f7.jpg?ca=20&amp;ce=0&amp;s=1000x" alt="Premier Ocean View Double Room" class="room_img"></div>
<div class="room_condition">
<span class="room_condition_span">퀸베드 1개 + 소파베드 1개 · 최대 3명 · 일부 바다 전망,객실 크기(㎡) - 45</span>
<div class="more_condition_box">
<button a href="hotel_checkout" class="more_condition">
<div class="more_condition_2"><span class="more_condition_3">
<span class="more_condition_span">객실 정보 더보기</span></span></div></button></div></div></div></div>

<div class="room_content_right">
<div class="reserve_box"><div class="reserve_area">
<div class="free_cancel_box">
<div class="free_cancel">
<span class="free_cancel_entire_span" style="background-color:#E7F4FD">
<span style="font-weight:600;font-size:13px;color:#1583DB" class="free_cancel_span">무료취소</span>
<span style="font-weight:500;font-size:13px;color:#0792E9" class="free_cancel_span"> 4월 7일 까지</span></span></div>

<div><ul class="perksList">
<li class="perk"><div class="perk_content">무료 생수</div></li>
<li class="perk"><div class="perk_content">무료 피트니스 센터</div></li></ul></div></div>
<div class="reserve_right">
<div class="price_box">
<div class="price">
<span class="price_span">216,080원/박</span></div>
</div>
<div class="room_reserve_btn_area">
<button class="room_reserve_btn" onclick="location.href='hotel_checkout'">
<div class="btnTitle"><span class="BtnSpan">예약하기</span></div></button></div></div></div></div>
</div></div></div></div>


<!-- 룸 2 -->
<div class="each_room">
<div class="room_title"><span class="hotelBold">Premier Ocean View Twin Room</span></div>
<div class="room_content">
<div class="room_content_left">
<div class="left_entire">
<div class="room_pic">
<img src="https://pix8.agoda.net/hotelImages/7385346/-1/1d2649b6c67e8f2738eafc7f20636ef7.jpg?ca=20&amp;ce=0&amp;s=1000x" alt="Premier Ocean View Twin Room" class="room_img"></div>
<div class="room_condition">
<span class="room_condition_span">싱글베드 2개 + 소파베드 1개 · 최대 3명 · 바다 전망,객실 크기(㎡) - 45</span>
<div class="more_condition_box">
<button class="more_condition">
<div class="more_condition_2"><span class="more_condition_3">
<span class="more_condition_span">객실 정보 더보기</span></span></div></button></div></div></div></div>

<div class="room_content_right">
<div class="reserve_box"><div class="reserve_area">
<div class="free_cancel_box">
<div class="free_cancel">
<span class="free_cancel_entire_span" style="background-color:#E7F4FD">
<span style="font-weight:600;font-size:13px;color:#1583DB" class="free_cancel_span">무료취소</span>
<span style="font-weight:500;font-size:13px;color:#0792E9" class="free_cancel_span"> 4월 7일 까지</span></span></div>

<div><ul class="perksList">
<li class="perk"><div class="perk_content">무료 생수</div></li>
<li class="perk"><div class="perk_content">무료 피트니스 센터</div></li></ul></div></div>

<div class="reserve_right">
<div class="price_box">
<div class="price">
<span class="price_span">216,080원/박</span></div>

<div class="room_reserve_btn_area">
<button class="room_reserve_btn">
<div class="btnTitle" onclick="location.href='hotel_checkout'">
<span class="BtnSpan">예약하기</span></div></button></div></div></div></div>
</div></div></div></div>


<!-- 룸 3 -->
<div class="each_room">
<div class="room_title"><span class="hotelBold">프리미어 더블룸, 바다 전망</span></div>
<div class="room_content">
<div class="room_content_left">
<div class="left_entire">
<div class="room_pic">
<img src="https://i.travelapi.com/lodging/38000000/37630000/37622900/37622802/12d74e35_z.jpg" alt="프리미어 더블룸, 바다 전망" class="room_img">
<div class="css-r5esnv e1nunbqm7"><span>10+</span></div></div>
<div class="room_condition">
<span class="room_condition_span">퀸사이즈침대 1개 · 최대 3명 · 바다 전망</span>
<div class="more_condition_box">
<button class="more_condition">
<div class="more_condition_2"><span class="more_condition_3">
<span class="more_condition_span">객실 정보 더보기</span></span></div></button></div></div></div></div>

<div class="room_content_right">
<div class="reserve_box"><div class="reserve_area">
<div class="free_cancel_box">
<div class="free_cancel">
<span class="free_cancel_entire_span" style="background-color:#E7F4FD">
<span style="font-weight:600;font-size:13px;color:#1583DB" class="free_cancel_span">무료취소</span>
<span style="font-weight:500;font-size:13px;color:#0792E9" class="free_cancel_span"> 4월 7일 까지</span></span></div></div>

<div class="reserve_right">
<div class="price_box">
<div class="price">
<span class="price_span">216,081원/박</span></div>

<div class="room_reserve_btn_area"><a href = "hotel_checkout">
<button class="room_reserve_btn" onclick="location.href='hotel_checkout'"> 
<div class="btnTitle"><span class="BtnSpan">예약하기</span></div></button></a></div></div></div></div></div></div></div></div></div></div>

</body>
</html>