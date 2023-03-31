<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/hotel_checkout.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>호텔 결제 페이지</title>
</head>
<body class="body" data-action="index" data-controller-path="mrt3/payment" data-controller="payment"
data-sign-in data-turbolinks="false" style>

<div id="Mrt3Payment-react-component-a92f35c0-6ea8-48dc-8477-7eb3bb3206cc">
<main class="orderForm--Container">
<form class="orderForm--Form">
<h1 class="orderForm--Title">예약하기</h1>

<!-- 왼쪽 섹션 -->
<div class="orderForm--Content">
<div class="orderForm--LeftContainer">
<div class="sectionContainer--Container">
<div class="sectionContainerHeader--Wrapper">
<div class="sectionContainerHeader--Box">
<h2 class="sectionContainerHeader--Title">상품 정보</h2></div></div>
<hr class="title--Underbar">
<div class="sectionContainer--Body">
<div class="productInfoSummary--TitleWrapper">
<div class="productInfoSummary--ImageWrapper">
<img src="https://i.travelapi.com/lodging/38000000/37630000/37622900/37622802/3e004903_z.jpg" 
					alt="상품 이미지" class="productInfoSummary--Image"></div>
<div class="productInfoSummary--TextWrapper">
<h3 class="productInfoSummary--Title">골드원 호텔 &amp; 스위트(GoldOne Hotel &amp; Suites)</h3>
<div class="productInfoSummary--Schedule">
<div class="reservationDate--Container">
<time class="reservationDate--Time">23년 04월 10일 (월) 15시 00분부터 ~ </time>
<div class="reservationDate--Wrapper">
<time class="reservationDate--Time">23년 04월 11일 (화) 11시 00분까지</time><span>, 1박</span>
</div></div></div></div></div>

<ul class="productInfoOptions--OptionWrapper">
<li class="productInfoOptions--Option">
<div class="productInfoOptions--OptionText">
<span class="productInfoOptions--OptionName">프리미어 트윈룸, 바다 전망, 슈퍼싱글침대 2개, 성인 2인 / 1박</span></div>
<div class="productInfoOptions--OptionPrice">196,437원</div></li>
<li class="productInfoOptions--Option">
<div class="productInfoOptions--OptionText">
<span class="productInfoOptions--OptionName">세금 및 수수료</span></div>
<div class="productInfoOptions--OptionPrice">19,644원</div></li></ul>

<div class="productInfoPrice--Container">
<div class="productInfoPrice--TotalPriceWrapper">
<div class="productInfoPrice--TotalPriceText">총 상품 금액</div>
<strong class="productInfoPrice--TotalPriceNumber">216,081원</strong></div></div></div></div>


<!-- 예약자 정보 섹션 -->
<div class="sectionContainer--Container">
<div class="sectionContainerHeader--Wrapper">
<div class="sectionContainerHeader--Box">
<h2 class="sectionContainerHeader--Title">예약자 정보</h2></div></div>
<hr class="title--Underbar">
<div class="sectionContainer--Body">
<div class="reservationPersonInfo--Wrapper">
<div class="reservationPersonInfo--Summary">
<div class="infoField--Field">
<div class="infoField--Title">예약자 이름</div>
<div class="infoField--Content">윤미래</div></div></div>
<div class="infoField--Field">
<div class="infoField--Title">이메일 주소</div>
<div class="infoField--Content">dldwnl@naver.com</div></div>
<div class="infoField--Field">
<div class="infoField--Title">휴대전화 번호</div>
<div class="infoField--NeededContent">입력해주세요</div></div></div>

<div class="infoChange--Btn">
<span role="button" class="infoChange--Btn--2">
<button type="button" class="mrt-button infoChange--Btn--3">
<span class="buttonSpan">정보 변경</span></button></span></div></div>
<p class="reservationPersonInfo--Highlight">예약 안내 정보가 입력하신 이메일로 발송됩니다.</p></div></div>


<!-- 추가 예약 정보(필수) 섹션 -->
<div class="sectionContainer--Container">
<div class="sectionContainerHeader--Wrapper">
<div class="sectionContainerHeader--Box">
<h2 class="sectionContainerHeader--Title">추가 예약 정보</h2>
<span class="sectionContainerHeader--Required">(필수)</span></div></div>
<hr class="title--Underbar">
<div class="sectionContainer--Body">

<div class="productRequireInfos--FlagWrapper">
<div class="productRequireInfos--FlagTitle">체크인 고객 정보</div>
<div class="productRequireInfos--FlagSubTitle">숙소에 실제 체크인하는 분의 정보를 정확하게 입력해주세요.</div>
<div class="productRequireInfos--TitleWrapper">
<div class="productRequireInfos--Title">체크인 고객 이름</div>
<div class="additionalInfoContainer--Container">
<input type="text" maxlength="50" class="text--TextInput" value="" placeholder="홍길동">
<div class="additionalInfoContainer--Caption"></div></div>
<div class="additionalInfoContainer--Container">
<div class="additionalInfoContainer--Caption"></div></div></div></div>

<div class="productRequireInfos--FlagWrapper">
<div class="productRequireInfos--FlagTitle">예약자 정보</div>
<div class="productRequireInfos--FlagSubTitle">예약하시는 분의 정보를 정확하게 입력해주세요.</div>
<div class="productRequireInfos--TitleWrapper">
<div class="productRequireInfos--Title">예약자 이름</div>
<div class="additionalInfoContainer--Container">
<input type="text" maxlength="50" class="text--TextInput" value="" placeholder="홍길동">
<div class="additionalInfoContainer--Caption"></div></div>
<div class="additionalInfoContainer--Container">
<div class="additionalInfoContainer--Caption"></div></div></div></div>

<div class="partnerCustomInfos--OptionWrapper">
<div class="partnerCustomInfos--OptionTitle">기타 요청 사항</div>
<div class="additionalInfoContainer--Container">
<div class="additionalInfoContainer--Label">숙소에 전달할 요청사항을 작성해주세요.</div>
<textarea maxlength="100" placeholder="답변을 입력해 주세요." class="textArea--TextAreaInput"></textarea>
<div class="additionalInfoContainer--Caption"></div></div>
<div class="partnerCustomInfos--GuideText">고객님의 요청사항이 전달되나, 간혹 현장 사정에 따라 반영되지 않을 수 있습니다.</div></div></div></div>




<!-- 오른쪽 섹션 -->
<div class="floatingContainer--Container">
<div class="floatingContainer--Wrapper">
<!-- 결제 정보 -->
<div class="sectionContainer--Container">
<div class="sectionContainerHeader--Wrapper">
<div class="sectionContainerHeader--Box">
<h2 class="sectionContainerHeader--Title">결제 정보</h2></div></div>
<hr class="title--Underbar">
<div class="sectionContainer--Body">
<div class="settledInfo--Container">
<div class="settledInfo--Info">
<span class="settledInfo--Text">주문 금액</span>
<span class="settledInfo--Text">216,081원</span></div></div>
<div class="totalPriceInfo--Container">
<span class="totalPriceInfo--Text">총 결제 금액</span>
<span class="totalPriceInfo--Price">216,081원</span></div>
<div class="paymentInfo--Wrapper">
<div class="productNoticeInfo--Wrapper">
<span class="productNoticeInfo--Text--productNoticeInfo--Button">숙소에 대해 알아두실 사항</span>
<img class="productNoticeInfo--customIconStyle" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_info_12x12_line_gray_500.svg" alt="icon"></div></div></div></div>

<!-- 약관 안내 섹션 -->
<div class="sectionContainer--Container">
<div class="sectionContainerHeader--Wrapper">
<div class="sectionContainerHeader--Box">
<h2 class="sectionContainerHeader--Title">약관 안내</h2></div></div>
<hr class="title--Underbar">
<div class="sectionContainer--Body">
<div class="policyForm--Container">
<div><div class="mrt-form-item"><div class="agree--All">
<span class="agree--Checkbox">
<input id="mrt-all-term-agree" type="checkbox" class="agree--Checkbox-2" value="allTermAgreeChecked"></span>
<label class="mrt-checkbox-label term--label" for="mrt-all-term-agree">전체 약관 동의</label></div>

<div class="allTerms--TermContainer">

<div class="mrt-required-term">
<div class="requiredTerm--box">
<span class="agree--Checkbox">
<input id="mrt-privacy-term-privacyTerm" type="checkbox" class="agree--Checkbox-2" value="privacyTerm"></span>
<label class="mrt-checkbox-label term--label" for="mrt-privacy-term-privacyTerm">개인정보 제공 동의 (필수)</label></div>
<img class="termImage" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrowright_md_gray_300.svg" alt="detail arrow"></div>

<div class="mrt-required-term">
<div class="requiredTerm--box">
<span class="agree--Checkbox">
<input id="mrt-privacy-term-privacyUsageTerm" type="checkbox" class="agree--Checkbox-2" value="privacyUsageTerm"></span>
<label class="mrt-checkbox-label term--label" for="mrt-privacy-term-privacyUsageTerm">개인정보 수집 및 이용 동의 (필수)</label></div>
<img class="termImage" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrowright_md_gray_300.svg" alt="detail arrow"></div>

<div class="mrt-required-term">
<div class="requiredTerm--box">
<span class="agree--Checkbox">
<input id="mrt-privacy-term-benefitsTerm" type="checkbox" class="agree--Checkbox-2" value="benefitsTerm"></span>
<label class="mrt-checkbox-label term--label" for="mrt-privacy-term-benefitsTerm">특가 숙소 및 할인 혜택 안내 동의 (선택)</label></div>
<img class="termImage" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrowright_md_gray_300.svg" alt="detail arrow"></div></div></div></div>

<div class="notice--Container">
<div class="notice--Text--notice--Title">예약 취소 규정</div>
<div class="notice--Text">
<p class="css-0">숙박일 3일 전 23시 59분까지 취소 : 전액 환불</p>
<p class="css-0">숙박일 3일 전 23시 59분 이후 취소 : 환불 불가</p></div></div></div></div></div>

<!-- 결제하기 버튼 -->
<div class="purchaseButton--Wrapper">
<span role="button" class="purchaseButton--disabled">
<button type="button" class="mrt-button purchaseBtn" disabled="">
<span class="buttonSpan">216,081원 결제하기</span></button></span></div></div></div>

</main>
</div>

</body>
</html>