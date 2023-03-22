<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>렌트카 결제</title>
</head>
<body>

<!-- 상세 페이지에서 선택 클릭 시 로그인 화면으로 넘어가게 해야 함 -->
<div id="wrap">
<!-- header 들어갈 자리 -->

<div id="container">
<div id="contents">
<form novalidate="" class="ng-untouched ng-pristine ng-invalid">
<div class="contents-area">

<!-- 상단 여행자 확인 및 결제, 진행단계 표시 섹션 -->
<div class="breadcrumbs">
<div class="text-article">
<p class="text"><strong>여행자 확인 및 결제</strong></p><p class="sub-text">여행 일정을 확인하고 운전자 정보를 입력해주세요.</p></div>

<ul class="step">
<li><p class="num">1</p><p class="text">상품선택</p></li>
<li class="active"><p class="num">2</p>
<p class="text">결제하기</p></li></ul></div>

<!-- 진짜 본문 -->
<div class="contents">
<!-- 렌터카 정보 섹션 -->
<div class="contents-item">
<h2 class="heading-title1 line-bottom">렌터카 정보</h2>
<div class="rentalcar-schedule-box">
<div class="schedule-image">
<img alt="" class="rentacar-image" src="https://jtns1.jeju.com/images/upload/contents/rc/985_rc_con.jpg"></div>
<div class="schedule-information">
<p class="rentalcar-name">
<strong class="ml5">더뉴레이</strong><strong class="year">&nbsp;[18~21년식]</strong></p>

<ul class="rentalcar-option-list between color-main2">
	<li class="option type">Economy</li>
	<li class="option person">5인승</li>
	<li class="option gear">자동 변속</li><!---->
	<li class="option fuel">Gasoline</li>
</ul>
<ul class="option-list">
<li><span class="option date">이용일</span><span> 2023.03.23(목) 08:00 - 2023.03.24(금) 08:00 </span></li>
<li><span class="option time">이용 시간</span><span>총24시간 00분</span></li>
<li><span class="option city">인수 장소</span><span>제주시 연미3길 4 (오라이동 2093-1)</span></li>
<li><span class="option city">반납 장소</span><span>제주시 연미3길 4 (오라이동 2093-1)</span></li>
<li><span class="option user">대여가능 나이</span><span>만 26세 이상</span></li>
<li><span class="option user">대여가능 운전경력</span><span>1년 이상</span></li>
<li><span class="option user">보험</span><span>보험 미포함</span></li>
</ul></div></div></div>

<!-- 예약자 정보 입력 섹션 -->
<div class="contents-item">
<h2 class="heading-title1 line-bottom">예약자 정보 입력</h2>
<p class="color-sub6">예약과 관련된 중요사항을 연락처로 발송해 드립니다.</p>
<div class="row-list mt40">
<div class="row-item">
<div class="row-label">예약자 명</div>
<div class="row-form">
<div class="input lg line">
<input formcontrolname="userName" type="text" placeholder="이름 입력" class="c-input ng-untouched ng-pristine ng-invalid"><!---->
<span class="valid-msg">예약자 명은 필수값입니다.</span></div></div></div>
<div class="row-item">
<div class="row-label">휴대폰 번호</div>
<div class="row-form">
<div class="input lg line">
<input formcontrolname="userPhone" type="text" placeholder="'-' 제외하고 입력" class="c-input ng-untouched ng-pristine ng-invalid"><!---->
<span class="valid-msg"> 휴대폰 번호는 10자리 이상으로 입력해야 합니다. </span></div></div></div>
<div class="row-item">
<div class="row-label">이메일 주소</div>
<div class="row-form">
<div class="input lg line">
<input formcontrolname="userEmail" type="email" placeholder="example@mail.com" class="c-input ng-untouched ng-pristine ng-invalid"><!---->
<span class="valid-msg">이메일주소는 필수값입니다.</span></div></div></div></div></div>

<!-- 결제 금액 섹션 -->
<div class="contents-item"><h2 class="heading-title1 line-bottom">운전자 정보 입력</h2><p class="color-sub6">여권상의 영문성, 영문이름과 같지 않으면 대여가 거부되거나 서비스를 이용할 수 없습니다.</p><div class="row-list mt40"><h3 class="row-title"><strong>운전자</strong><label class="checkbox md"><input type="checkbox" class="checkbox-control-input"><span class="checkbox-control-text">예약자 정보와 동일</span></label></h3><div class="row-item"><div class="row-label">운전자 선택</div><div class="row-form"><div class="select-box lg line"><select formcontrolname="selectTraveler" class="ng-untouched ng-pristine ng-valid"><option value="NOTHING">신규 운전자를 추가합니다.</option><!----></select></div></div></div><div class="row-item"><div class="row-label">한글 이름</div><div class="row-form"><div class="input lg line"><input formcontrolname="driverNameKr" type="text" placeholder="한글 이름 입력" class="ng-untouched ng-pristine ng-invalid"><span class="valid-msg">한글 이름은 필수값입니다.</span><!----><!----><!----><!----><!----></div></div></div><div class="row-item"><div class="row-label">영문 성/이름</div><div class="row-form en-name"><div class="input lg line"><input formcontrolname="driverLastName" type="text" placeholder="영문 성" style="text-transform: uppercase;" class="ng-untouched ng-pristine ng-invalid"><span class="valid-msg">영문 성(은) 필수값입니다.</span><!----><!----><!----><!----><!----></div><div class="input lg line"><input formcontrolname="driverFirstName" type="text" placeholder="영문 이름" style="text-transform: uppercase;" class="ng-untouched ng-pristine ng-invalid"><span class="valid-msg">영문 이름은 필수값입니다.</span><!----><!----><!----><!----><!----></div></div></div><div class="row-item"><div class="row-label">휴대폰 번호</div><div class="row-form"><div class="input lg line"><input formcontrolname="driverPhone" type="text" placeholder="'-' 제외하고 입력" class="c-input ng-untouched ng-pristine ng-invalid"><!----><span class="valid-msg"> 휴대폰 번호는 10자리 이상으로 입력해야 합니다. </span><!----><!----><!----><!----></div></div></div><div class="row-item"><div class="row-label">생년월일</div><div class="row-form"><div class="input lg line"><input formcontrolname="driverBirthday" type="text" placeholder="생년월일 입력(8자리)" maxlength="8" class="ng-untouched ng-pristine ng-valid"><!----></div></div></div><div class="row-item"><div class="row-label">성별선택</div><div class="row-form"><label class="radio lg"><input formcontrolname="driverGender" value="M" name="driverGender" type="radio" class="radio-control-input ng-untouched ng-pristine ng-valid"><span class="radio-control-text">남성</span></label><label class="radio lg"><input formcontrolname="driverGender" value="F" name="driverGender" type="radio" class="radio-control-input ng-untouched ng-pristine ng-valid"><span class="radio-control-text">여성</span></label></div></div><div class="row-item"><div class="row-label top">면허종별</div><div class="row-form"><div class="select-box lg line"><select formcontrolname="license" id="" required="" class="ng-untouched ng-pristine ng-invalid"><option value="" selected="">면허증을 선택해 주세요.</option><option value="1B">1종 대형</option><option value="1O">1종 보통</option><option value="2A">2종 보통</option><!----></select></div><p class="mt10"><i class="icon sm information mr5"></i><span class="color-sub5">15인 이상 차량은 1종 대형, 10인 이상 차량은 1종 보통 이상 면허소지자만 운전가능</span></p></div></div><!----></div></div><!----><!----></div><div class="aside right"><h2 class="heading-title1 mb10">취소 마감일</h2><div class="aside-cancel-deadline mb60"><div class="check-time"><strong class="date">취소 마감일 : 03.21(화)</strong><strong class="time">16:59까지</strong></div><ul class="text-list dash md color-sub6 mt20"><li> 2023-03-21 17:00 - 2023-03-22 16:59 <br>취소 시 : <strong class="cancel-price">6,050원 청구</strong><!----><!----></li><li> 2023-03-22 17:00 - 2023-03-23 08:00 <br>취소 시 : <strong class="cancel-price">12,100원 청구</strong><!----><!----></li><!----></ul><ul class="text-list md color-sub3 mt20"><li>※ 무료 취소 가능 기간 이후 취소 시, 수수료가 발생합니다.</li></ul><!----></div><h2 class="heading-title1 mb10">최종 결제 정보</h2><div class="aside-payment"><ul class="payment mb20"><li><dl><dt><strong>포함사항</strong></dt><dd></dd><!----></dl></li></ul><!----><ul class="payment"><li></li><li><span class="color-main2">총 결제 금액</span><!----><!----><!----><strong class="color-point2"> 12,100 <span class="font-md color-sub5 mr5">원</span></strong><!----></li></ul><div class="payment-rule"><p class="font-lg-b mb10">요금 규정, 취소수수료 규정을 확인하세요.</p><p class="color-sub6 lh160">아래 규정 및 약관을 읽어보고, 동의하는 경우에 체크하고 최종 예약을 완료해 주세요.</p><ul class="mt20"><li data-target="agreeAllChk" class="line"><label class="checkbox lg"><input type="checkbox" class="checkbox-control-input"><span class="checkbox-control-text">모든 약관에 동의함</span></label></li><li><label data-target="agreeChk" class="checkbox lg"><input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid"><span class="checkbox-control-text"><!---->  만 14세 이상입니다. <!----><!----></span></label></li><li><label data-target="agreeChk" class="checkbox lg"><input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid"><span class="checkbox-control-text"><span>[필수] 개인정보 수집 및 이용</span> 을(를) 읽었으며 동의함 <!----><!----><!----></span></label></li><li><label data-target="agreeChk" class="checkbox lg"><input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid"><span class="checkbox-control-text"><span>[필수] 고유 식별정보 수집 및 이용</span> 을(를) 읽었으며 동의함 <!----><!----><!----></span></label></li><li><label data-target="agreeChk" class="checkbox lg"><input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid"><span class="checkbox-control-text"><span>[필수] 국내 렌터카 개인정보 제3자 제공</span> 을(를) 읽었으며 동의함 <!----><!----><!----></span></label></li><li><label data-target="agreeChk" class="checkbox lg"><input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid"><span class="checkbox-control-text"><span>[필수] 국내 렌터카 특별약관</span> 을(를) 읽었으며 동의함 <!----><!----><!----></span></label></li><li><label data-target="agreeChk" class="checkbox lg"><input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid"><span class="checkbox-control-text"><span>[필수] 국내 렌터카 구매 전 확인사항</span> 을(를) 읽었으며 동의함 <!----><!----><!----></span></label></li><li><label data-target="agreeChk" class="checkbox lg"><input type="checkbox" class="checkbox-control-input ng-untouched ng-pristine ng-valid"><span class="checkbox-control-text"><span>[필수] 공급사정보 확인 동의</span> 을(를) 읽었으며 동의함 <!----><!----><!----></span></label></li><!----><!----></ul></div><div class="other-information"><p class="font-lg-b mb10">기타 안내사항</p><ul class="text-list md dot color-sub6"><li><strong class="color-red">[필독]</strong> 코로나19 관련 국가/지역별 입국, 인원 제한 사항이 있을 수 있습니다. 반드시 외교부/보건복지부 사이트를 확인하시길 바랍니다. </li></ul></div><div class="btn-group flex-around mt20"><button class="btn lg default">결제정보 입력하기</button></div></div></div><!----></div></form></div></div><!----><app-footer _nghost-serverapp-c363=""><footer _ngcontent-serverapp-c363="" class="footer"><section _ngcontent-serverapp-c363="" class="fnb_section"><div _ngcontent-serverapp-c363="" class="inner"><ul _ngcontent-serverapp-c363="" class="nav_site"><li _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="https://company.ybtour.co.kr/main.do" target="_blank">회사소개</a></li><li _ngcontent-serverapp-c363="" class="privacy"><a _ngcontent-serverapp-c363="" href="https://www.ybtour.co.kr/common/privacy.yb" target="_self">개인정보처리방침</a></li><li _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="https://www.ybtour.co.kr/common/internetAgree.yb" target="_self">이용약관</a></li><li _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="https://www.ybtour.co.kr/common/travelAgree.yb" target="_self">여행약관</a></li><li _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="https://www.ybtour.co.kr/common/travelerInsuInfo.yb" target="">여행자보험</a></li><li _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="http://company.ybtour.co.kr/agent/about.do?_ga=2.5294899.1225741257.1600242776-2062601379.1600242776" target="_blank">대리점안내</a></li><li _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="https://www.ybtour.co.kr/cs/newsAdvertisement.yb" target="_self">신문광고</a></li><li _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="https://www.ybtour.co.kr/cs/directionGuide.yb" target="_self">오시는 길</a></li><!----></ul><ul _ngcontent-serverapp-c363="" class="nav_sns"><li _ngcontent-serverapp-c363="" class="fb"><a _ngcontent-serverapp-c363="" href="https://www.facebook.com/yellowballoonofficial/" target="_blank"><span _ngcontent-serverapp-c363="" class="blind_ir">노랑풍선 페이스북 바로가기</span></a></li><li _ngcontent-serverapp-c363="" class="insta"><a _ngcontent-serverapp-c363="" href="https://www.instagram.com/yellowballoon_official/" target="_blank"><span _ngcontent-serverapp-c363="" class="blind_ir">노랑풍선 인스타 바로가기</span></a></li><li _ngcontent-serverapp-c363="" class="youtube"><a _ngcontent-serverapp-c363="" href="https://www.youtube.com/user/ybtour2013" target="_blank"><span _ngcontent-serverapp-c363="" class="blind_ir">노랑풍선 유튜브 바로가기</span></a></li><li _ngcontent-serverapp-c363="" class="kakao"><a _ngcontent-serverapp-c363="" href="https://pf.kakao.com/_hhAxbd" target="_blank"><span _ngcontent-serverapp-c363="" class="blind_ir">노랑풍선 플러스친구 바로가기</span></a></li><li _ngcontent-serverapp-c363="" class="nblog"><a _ngcontent-serverapp-c363="" href="https://blog.naver.com/yb_tour" target="_blank"><span _ngcontent-serverapp-c363="" class="blind_ir">노랑풍선 네이버블로그 바로가기</span></a></li><li _ngcontent-serverapp-c363="" class="npost"><a _ngcontent-serverapp-c363="" href="https://post.naver.com/myProfile.nhn?memberNo=1173675" target="_blank"><span _ngcontent-serverapp-c363="" class="blind_ir">노랑풍선 네이버포스트 바로가기</span></a></li><!----></ul></div></section><section _ngcontent-serverapp-c363="" class="info_section"><div _ngcontent-serverapp-c363="" class="inner"><div _ngcontent-serverapp-c363="" class="company_info"><h5 _ngcontent-serverapp-c363="" class="tit_yb"> (주)노랑풍선<img _ngcontent-serverapp-c363="" src="https://www.ybtour.co.kr/static/images/common/logo_kosdaq.png" alt="KOSDAQ 코스닥 상장법인"></h5><p _ngcontent-serverapp-c363="" class="txt"> 대표이사 김진국<i _ngcontent-serverapp-c363="" class="divider"></i>서울특별시 중구 수표로 31, 노랑풍선빌딩 <br _ngcontent-serverapp-c363=""> 사업자등록번호 104-81-64440<i _ngcontent-serverapp-c363="" class="divider"></i>관광사업자등록증번호 제2006-000003호<i _ngcontent-serverapp-c363="" class="divider"></i>통신판매업신고번호 제2008-서울중구-0278<a _ngcontent-serverapp-c363="" href="http://www.ftc.go.kr/www/bizCommList.do?key=232" target="_blank" class="btn_biz">사업자 정보확인</a></p><p _ngcontent-serverapp-c363="" class="txt"> [부산지사] 부산광역시 부산진구 중앙대로668, 9층 912호 (부전동, 에이원프라자) <br _ngcontent-serverapp-c363=""> 사업자등록번호 870-85-01900 </p><p _ngcontent-serverapp-c363="" class="txt"> 영업배상책임보험가입 총 20억원 · 한국관광협회중앙회 여행공제회 공제영업보증가입 10억원 · 공제기획여행보증가입 5억원 </p></div><div _ngcontent-serverapp-c363="" class="cs_info"><div _ngcontent-serverapp-c363="" class="tit_cs"><a _ngcontent-serverapp-c363="" href="https://www.ybtour.co.kr/cs/main.yb" class="link_cs">고객센터</a><a _ngcontent-serverapp-c363="" href="https://www.ybtour.co.kr/cs/arsGuide.yb" class="link_loc">지역별 직통 상담 안내</a></div><ul _ngcontent-serverapp-c363="" class="cs_tel"><li _ngcontent-serverapp-c363="" class="pkg"><span _ngcontent-serverapp-c363="" class="tit">패키지여행 상담</span><span _ngcontent-serverapp-c363="" class="txt">1544-2288</span></li><li _ngcontent-serverapp-c363="" class="ota"><span _ngcontent-serverapp-c363="" class="tit">자유여행 상담</span><span _ngcontent-serverapp-c363="" class="txt">1644-3399</span></li><li _ngcontent-serverapp-c363="" class="busan"><span _ngcontent-serverapp-c363="" class="tit">부산지사 상담</span><span _ngcontent-serverapp-c363="" class="txt">051-713-0710</span></li></ul><dl _ngcontent-serverapp-c363="" class="cs_email"><dt _ngcontent-serverapp-c363="">대표메일</dt><dd _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="mailto:master@ybtour.com">master@ybtour.com</a></dd><dt _ngcontent-serverapp-c363="">마케팅제휴</dt><dd _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="mailto:marketing@ybtour.com">marketing@ybtour.com</a></dd><dt _ngcontent-serverapp-c363="">판매제휴</dt><dd _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="mailto:salespartner@ybtour.com">salespartner@ybtour.com</a></dd><dt _ngcontent-serverapp-c363="">대리점문의</dt><dd _ngcontent-serverapp-c363=""><a _ngcontent-serverapp-c363="" href="mailto:sales.agent@ybtour.co.kr">sales.agent@ybtour.co.kr</a></dd></dl></div></div></section><section _ngcontent-serverapp-c363="" class="award_section"><div _ngcontent-serverapp-c363="" class="inner"><ul _ngcontent-serverapp-c363="" class="award_list"><li _ngcontent-serverapp-c363="" class="ccm"><button _ngcontent-serverapp-c363="" type="button"><span _ngcontent-serverapp-c363="" class="blind_ir">소비자중심경영 공정거래위원회 한국소비자원</span></button><!----><!----><!----></li><li _ngcontent-serverapp-c363="" class="knqa"><button _ngcontent-serverapp-c363="" type="button"><span _ngcontent-serverapp-c363="" class="blind_ir">제45회 국가품질경영대회서비스품질우수상</span></button><!----><!----><!----></li><li _ngcontent-serverapp-c363="" class="scsi"><button _ngcontent-serverapp-c363="" type="button"><span _ngcontent-serverapp-c363="" class="blind_ir">SCSI 대한민국 소셜미디어대상 1위</span></button><!----><!----><!----></li><li _ngcontent-serverapp-c363="" class="tourinfo"><!----><a _ngcontent-serverapp-c363="" target="_blank" href="http://tourinfo.or.kr/standard/partners.asp"><span _ngcontent-serverapp-c363="" class="blind_ir">국외여행상품 정보제공 표준안 참여여행사 마크</span></a><!----><!----></li><li _ngcontent-serverapp-c363="" class="ftc"><button _ngcontent-serverapp-c363="" type="button"><span _ngcontent-serverapp-c363="" class="blind_ir">소비자의 날 국무총리 표창</span></button><!----><!----><!----></li><!----></ul></div></section><section _ngcontent-serverapp-c363="" class="noti_section"><div _ngcontent-serverapp-c363="" class="inner"><ul _ngcontent-serverapp-c363="" class="noti_list"><li _ngcontent-serverapp-c363=""> 노랑풍선은 개별 항공권, 단품 및 일부 여행상품에 대하여 판매중개자로서 통신판매의 당사자가 아닙니다. 따라서 해당 상품의 상품·거래정보 및 거래 등에 대하여 책임을 지지 않습니다. </li><li _ngcontent-serverapp-c363=""> 항공권 또는 항공권이 포함된 상품의 경우, 표시되는 상품요금은 세금 및 예상 유류할증료가 포함된 가격이며, 유류할증료는 유가 및 환율 등에 따라 변동될 수 있습니다. </li></ul><p _ngcontent-serverapp-c363="" class="copyright">©Yellow Balloon tour. All Rights Reserved.</p></div></section></footer></app-footer><!----></div>



</body>
</html>