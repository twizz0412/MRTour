<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<style type="text/css">
		@import url("signup.css");
	</style>
</head>
<body>

<main class="SignUpEmail-Container">
<form action="#" method="POST" class="SignUpEmail-Form">
<!-- 이름 섹션 -->
<div class="SignUpEmail-Section">
<div class="FormTextInput-Container">
<label for="userName" required="" class="FormTextInput-Label">이름</label>
<input id="userName" name="user[name]" type="text" placeholder="이름을 입력해주세요." class="FormTextInput-Input" value=""></div></div>

<!-- 이메일 섹션 -->
<div class="SignUpEmail-Section">
<div class="FormTextInput-Container">
<label for="userEmail" required="" class="FormTextInput-Label">이메일</label>
<input id="userEmail" name="user[email]" type="email" placeholder="ID@example.com" class="FormTextInput-Input" value=""></div></div>

<!-- 비밀번호 섹션 -->
<div class="SignUpEmail-Section">
<div class="FormTextInput-Container">
<label for="userPasswordCurrent" required="" class="FormTextInput-Label">비밀번호</label>
<input id="userPasswordCurrent" name="user[password]" type="password" placeholder="영문, 숫자, 특수문자 2가지 조합 8~15자" 
class="FormTextInput-Input" value=""></div></div>

<!-- 비밀번호 확인 섹션 -->
<div class="SignUpEmail-Section">
<div class="FormTextInput-Container">
<label for="userPasswordConfirm" required="" class="FormTextInput-Label">비밀번호 확인</label>
<input id="userPasswordConfirm" name="user[confirm]" type="password" placeholder="비밀번호를 한번 더 입력해주세요." 
class="FormTextInput-Input" value=""></div></div>


<!-- 약관 섹션 -->
<div class="AgreementList-Container">
<div class="AgreementList-TitleSection">
<span class="Checkbox">
<input id="mrt-agreement-all" type="checkbox" class="inputCheckbox" value=""></span>
<label class="mrt-checkbox-label AgreeLabel" for="mrt-agreement-all">
<strong>전체 약관 동의</strong></label></div>

<ul class="AgreementList-List">
<!-- 만 14세 이상입니다. (필수) -->
<li class="AgreementItem-Row">
<div class="AgreementItem-Item">
<div class="Item-Checkbox">
<span class="Checkbox"><input type="checkbox" class="inputCheckbox" value=""></span>
<label class="mrt-checkbox-label AgreeLabel"></label></div>
<button type="button" class="AgreementItem-LabelBtn">만 14세 이상입니다. (필수)</button></div></li>

<!-- 회원 가입 및 운영약관 동의 (필수) -->
<li class="AgreementItem-Row">
<div class="AgreementItem-Item">
<div class="Item-Checkbox">
<span class="Checkbox"><input type="checkbox" class="inputCheckbox" value=""></span>
<label class="mrt-checkbox-label AgreeLabel"></label></div>
<button type="button" class="AgreementItem-LabelBtn">회원 가입 및 운영약관 동의 (필수)
<div class="AgreementItem-ArrowBox">
<img class="ArrowBox" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrow_right_xs_gray_300.svg" alt="icon"></div></button></div></li>

<!-- 개인정보 수집 및 이용 (필수) -->
<li class="AgreementItem-Row">
<div class="AgreementItem-Item">
<div class="Item-Checkbox">
<span class="Checkbox"><input type="checkbox" class="inputCheckbox" value=""></span>
<label class="mrt-checkbox-label AgreeLabel"></label></div>
<button type="button" class="AgreementItem-LabelBtn">개인정보 수집 및 이용 (필수)
<div class="AgreementItem-ArrowBox">
<img class="ArrowBox" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrow_right_xs_gray_300.svg" alt="icon"></div></button></div></li>

<!-- 위치정보 이용약관 (필수) -->
<li class="AgreementItem-Row">
<div class="AgreementItem-Item">
<div class="Item-Checkbox">
<span class="Checkbox"><input type="checkbox" class="inputCheckbox" value=""></span>
<label class="mrt-checkbox-label AgreeLabel"></label></div>
<button type="button" class="AgreementItem-LabelBtn">위치정보 이용약관 (필수)
<div class="AgreementItem-ArrowBox">
<img class="ArrowBox" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrow_right_xs_gray_300.svg" alt="icon"></div></button></div></li>

<!-- 특가 항공권 및 할인 혜택 안내 동의 (선택) -->
<li class="AgreementItem-Row">
<div class="AgreementItem-Item">
<div class="Item-Checkbox">
<span class="Checkbox"><input type="checkbox" class="inputCheckbox" value=""></span>
<label class="mrt-checkbox-label AgreeLabel"></label></div>
<button type="button" class="AgreementItem-LabelBtn">특가 항공권 및 할인 혜택 안내 동의 (선택)

<div class="AgreementItem-ArrowBox">
<img class="ArrowBox" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrow_right_xs_gray_300.svg" alt="icon"></div></button></div>
<p class="Changeable">프로필 &gt; 알림 설정에서 변경 가능</p></li></ul>

<ul class="AgreementList-Notices">
<li class="AgreementList-Notices-Content">*선택 항목을 동의하지 않아도 서비스를 이용하실 수 있습니다.</li></ul></div>

<!-- 회원가입 버튼 -->
<span role="button" class="ButtonArea">
<button type="button" class="mrt-button Button" disabled="">
<span class="Join">회원가입</span></button></span>

</form>
</main>

</body>
</html>