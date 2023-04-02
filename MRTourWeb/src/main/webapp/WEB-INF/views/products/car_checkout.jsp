<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="resources/css/car_checkout.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>렌트카 결제</title>
</head>
<body>

	<!-- 상세 페이지에서 선택 클릭 시 로그인 화면으로 넘어가게 해야 함 -->
	<div id="wrap">
	<!-- header 들어갈 자리 -->
	
	<div id="container">
		<div id	="contents">
			<form novalidate="" class="ng-untouched ng-pristine ng-invalid">
				<div class="contents-area">
	
				<!-- 상단 여행자 확인 및 결제, 진행단계 표시 섹션 -->
				<div class="breadcrumbs">
					<div class="text-article">
						<p class="text">
							<strong>여행자 확인 및 결제</strong>
						</p>
						<p class="sub-text">여행 일정을 확인하고 운전자 정보를 입력해주세요.</p>
					</div>
				
					<ul class="step">
						<li>
							<p class="num">1</p>
							<p class="text">상품선택</p>
						</li>
						<li class="active">
							<p class="num">2</p>
							<p class="text">결제하기</p>
						</li>
					</ul>
				</div>

				<!-- 진짜 본문 -->
				<div class="contents">
					<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
					<c:set var="product_info" value="${map.list[i]}" />
				<!-- 렌터카 정보 섹션 -->
					<div class="contents-item">
						<h2 class="heading-title1 line-bottom">렌터카 정보</h2>
						<div class="rentalcar-schedule-box">
							<div class="schedule-image">
								<img alt="" class="rentacar-image" src="${product_info.prd_img}">
							</div>
							<div class="schedule-information">
							<p class="rentalcar-name">
							<strong class="ml5">${product_info.prd_name}</strong>
							<strong class="year">&nbsp;[23년식]</strong></p>
							
							<ul class="rentalcar-option-list between color-main2">
								<li class="option type">Economy</li>
								<li class="option person">5인승</li>
								<li class="option gear">자동 변속</li><!---->
								<li class="option fuel">${product_info.prd_opt}</li>
							</ul>
							<ul class="option-list">
								<li class="option quantity" name = "buy_quantity" id = "buy_quantity">
									<span class="option date">이용일</span>
									<span><input type = "number" id = "buy_quantity" value = "${payment.buy_quantity}"></span>
								</li>
							<!-- 지역별 인수/반납 장소 화면변동 -->
							<c:choose>
								<c:when test = "${product_info.city_no eq '제주'}">
									<li><span class="option city">인수 장소</span><span>제주시 연미3길 4 (오라이동 2093-1)</span></li>
									<li><span class="option city">반납 장소</span><span>제주시 연미3길 4 (오라이동 2093-1)</span></li>
								</c:when>
								<c:when test = "${product_info.city_no eq '서울'}">
									<li><span class="option city">인수 장소</span><span>서울특별시 용산구 미래로 369 MRT서울지사 1층 (주차동 안쪽, 사무동 왼편) </span></li>
									<li><span class="option city">반납 장소</span><span>서울특별시 용산구 청파로 369 MRT서울지사 1층 (주차동 안쪽, 사무동 왼편)</span></li>
								</c:when>					
								<c:when test = "${product_info.city_no eq '경주'}">
									<li><span class="option city">인수 장소</span><span>경상북도 경주시 건천읍 화천리 1010 신경주KTX역사</span></li>
									<li><span class="option city">반납 장소</span><span>경상북도 경주시 건천읍 화천리 1010 신경주KTX역사</span></li>
								</c:when>
								<c:when test = "${product_info.city_no eq '강릉'}">
									<li><span class="option city">인수 장소</span><span>강원도 강릉시 교동 95 강릉KTX역 대합실 내 렌트카데스크</span></li>
									<li><span class="option city">반납 장소</span><span>강원도 강릉시 교동 95 강릉KTX역 대합실 내 렌트카데스크</span></li>
								</c:when>
								<c:when test = "${product_info.city_no eq '여수'}">
									<li><span class="option city">인수 장소</span><span>전라남도 여수시 덕충안길 90</span></li>
									<li><span class="option city">반납 장소</span><span>전라남도 여수시 덕충안길 90</span></li>
								</c:when>
								<c:when test = "${product_info.city_no eq '부산'}">
									<li><span class="option city">인수 장소</span><span>부산광역시 동구 초량동 1205-1 한국교직원공제회 부산회관</span></li>
									<li><span class="option city">반납 장소</span><span>부산광역시 동구 초량동 1205-1 한국교직원공제회 부산회관</span></li>
								</c:when>
							</c:choose>										
								<li><span class="option user">대여가능 나이</span><span>만 26세 이상</span></li>
								<li><span class="option user">대여가능 운전경력</span><span>1년 이상</span></li>
							</ul>
						</div>
					</div>
				</div>

				<!-- 예약자 정보 입력 섹션 -->
				<div class="contents-item">
					<h2 class="heading-title1 line-bottom">예약자 정보 입력</h2>
					<p class="color-sub6">예약과 관련된 중요사항을 연락처로 발송해 드립니다.</p>
					<div class="row-list mt40">
						<div class="row-item">
							<div class="row-label">예약자 명</div>
							<div class="row-form">
								<div class="input lg line">
									<input formcontrolname="userName" type="text" value="${member.member_name}" 
											class="c-input ng-untouched ng-pristine ng-invalid"><!---->
									<span class="valid-msg">예약자 명은 필수값입니다.</span>
								</div>
							</div>
						</div>
						<div class="row-item">
							<div class="row-label">휴대폰 번호</div>
							<div class="row-form">
								<div class="input lg line">
									<input formcontrolname="userPhone" type="text" id = "member_phone" value="${member.member_phone}" 
											class="c-input ng-untouched ng-pristine ng-invalid"><!---->
									<span class="valid-msg"> 휴대폰 번호는 10자리 이상으로 입력해야 합니다. </span>
								</div>
							</div>
						</div>
						<div class="row-item">
							<div class="row-label">이메일 주소</div>
							<div class="row-form">
								<div class="input lg line">
									<input formcontrolname="userEmail" type="text" id = "member_email" value="${member.member_email}" 
									class="c-input ng-untouched ng-pristine ng-invalid"><!---->
									<span class="valid-msg">이메일주소는 필수값입니다.</span>
								</div>
							</div>
						</div>
						
					</div>
				</div>


<!-- 최종 결제 정보 섹션 -->

				<div class="contents-item">
				<h2 class="heading-title1 line-bottom">최종 결제 정보</h2>
				<!-- 총 결제 금액 섹션 -->
				<ul class="payment">
					<li><span class="color-main2">총 결제 금액</span>
					<strong class="color-point2"> 12,100 
					<span class="font-md color-sub5 mr5">원</span></strong></li></ul>
				
				<!-- 약관 동의 섹션 -->
				<div class="payment-rule">
				<p class="font-lg-b mb10">요금 규정, 취소수수료 규정을 확인하세요.</p>
				<p class="color-sub6 lh160">아래 규정 및 약관을 읽어보고, 동의하는 경우에 체크하고 최종 예약을 완료해 주세요.</p>
				
				<ul class="AgreementList-List">
				
					<li data-target="agreeAllChk" class="line">
						<label class="checkbox lg">
						<input type="checkbox" class="checkbox-control-input">
						<span class="checkbox-control-text">모든 약관에 동의함</span></label></li>
									
					<li>
						<label data-target="agreeChk" class="checkbox lg">
						<input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid">
						<span class="checkbox-control-text"><!---->  만 14세 이상입니다. </span></label></li>
					
					<li>
						<label data-target="agreeChk" class="checkbox lg">
						<input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid">
						<span class="checkbox-control-text">
						<span>[필수] 개인정보 수집 및 이용</span> 을(를) 읽었으며 동의함 </span></label></li>
					<li>
						<label data-target="agreeChk" class="checkbox lg">
						<input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid">
						<span class="checkbox-control-text">
						<span>[필수] 고유 식별정보 수집 및 이용</span> 을(를) 읽었으며 동의함</span></label></li>
					<li>
						<label data-target="agreeChk" class="checkbox lg">
						<input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid">
						<span class="checkbox-control-text">
						<span>[필수] 국내 렌터카 개인정보 제3자 제공</span> 을(를) 읽었으며 동의함 </span></label></li>
					<li>
						<label data-target="agreeChk" class="checkbox lg">
						<input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid">
						<span class="checkbox-control-text">
						<span>[필수] 국내 렌터카 특별약관</span> 을(를) 읽었으며 동의함</span></label></li>
					<li>
						<label data-target="agreeChk" class="checkbox lg">
						<input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid">
						<span class="checkbox-control-text">
						<span>[필수] 국내 렌터카 구매 전 확인사항</span> 을(를) 읽었으며 동의함 </span></label></li>
					<li>
						<label data-target="agreeChk" class="checkbox lg">
						<input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid">
						<span class="checkbox-control-text">
						<span>[필수] 공급사정보 확인 동의</span> 을(를) 읽었으며 동의함 </span></label></li>
				</ul>
			</div>	

			<!-- 기타 안내사항 섹션 -->
			<div class="other-information">
				<p class="font-lg-b mb10">기타 안내사항</p>
				<ul class="text-list md dot color-sub6">
					<li>
						<strong class="color-red">[필독]</strong> 코로나19 관련 국가/지역별 입국, 인원 제한 사항이 있을 수 있습니다. 
							반드시 외교부/보건복지부 사이트를 확인하시길 바랍니다. 
					</li>
				</ul>
			</div>
			
			<div class="btn-group flex-around mt20">
				<button class="btn lg default">결제정보 입력하기</button>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
</form>
</div>
</div>



<!-- footer 들어갈 자리 -->

</div>

</body>
</html>