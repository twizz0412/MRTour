<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "com.mrtour.model.board.impl.BoardDAO" %>
<%@ page import = "com.mrtour.model.board.BoardVO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>미래투어[공지사항]</title>
	<link rel="stylesheet" type="text/css" href="resources/css/Notice_board.css" />
</head>
<body>
	<div id="contents" class="contents">
		<div class="text_wrap fix">
			<!-- 공지사항 -->
			<strong class="tit big">공지사항</strong> 
			<!--  -->
			<span class="notice-board">
				<div class="search_field">
					<form action="#" role="search">
						<fieldset>
							<legend class="blind">공지사항 검색</legend> 
							<div class="box_search">
								<div class="select_item">
									<div class="sb selectbox " role="listbox" aria-has-popup="true" aria-labelledby="" aria-disabled="false" style="width: 106.75px;" >
										<div class="display " >
											<div class="text">제목</div>
											<div class="arrow_btn">
												<span class="arrow"></span>
											</div>
										</div>
										<ul class="selectbox items" role="menu" aria-hidden="true" style="max-height: 493px; position: absolute; visibility: visible; width: 141px; display: none; left: 0px; top: 36px;">
											<li role="option" class="selected first" aria-disabled="">
												<div class="item">
													<div class="text">제목</div>
												</div>
											</li>
											<li role="option" aria-disabled="">
												<div class="item">
													<div class="text">내용</div>
												</div>
											</li>
											<li role="option" aria-disabled="" class="last">
												<div class="item">
													<div class="text">제목+내용</div>
												</div>
											</li>
										</ul>
									</div>
									<select class="has_sb" style="">
										<option value="TIT">제목</option>
										<option value="CTN">내용</option>
										<option value="TCN">제목+내용</option>
									</select>
								</div>
								 <input type="text" id="input_keyword" value="" name="" title="검색어" placeholder="검색어를 입력해 주세요." class="input_keyword"> 
								 <button type="submit" class="btn line">검색</button>
							 </div>
						 </fieldset>
					 </form>
				 </div>
			 </span>
		 </div>
		 <div class="js_tabs type1">
			 <ul class="tabs" style = "width:100%">
				 <li class="selected" style="width: 24.9%;"><a href="#notice_all">공지사항</a></li>
			 </ul>
		 </div> 
		 <div>
			<div class="tbl">
				<table class="type1">
					<colgroup>
						<col style="width: 10%;">
						<col style="width: 12%;">
						<col>
						<col style="width: 13%;">
					</colgroup> 
					<thead>
						<tr>
							<th>번호</th>
							<th>작성자</th>
							<th>제목</th>
							<th>등록일</th>
						</tr>
					</thead> 
					<tbody>
						<tr>
							<td class="txc">688</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="0" datafield="postTitlNm" style="cursor: pointer;">
									&lt;퇴근길LIVE&gt; 23년 03월 20일 방송 소통 이벤트 당첨자 안내 (투썸플레이스 기프티콘)</a></td>
							<td class="txc">2023.03.21</td>
						</tr>
						<tr>
							<td class="txc">687</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="1" datafield="postTitlNm" style="cursor: pointer;">
									[개인정보보호] 개인정보 처리방침 변경</a></td>
							<td class="txc">2023.03.17</td>
						</tr>
						<tr>
							<td class="txc">686</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="2" datafield="postTitlNm" style="cursor: pointer;">
									&lt;하나LIVE&gt; 23년 03월 15일 방송 이벤트 당첨자 안내 (쉐라톤 룸 업그레이드)</a></td>
							<td class="txc">2023.03.17</td>
						</tr>
						<tr>
							<td class="txc">685</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="3" datafield="postTitlNm" style="cursor: pointer;">
									&lt;하나LIVE&gt; 23년 03월 15일 방송 이벤트 당첨자 안내 (스타벅스 기프티콘)</a></td>
							<td class="txc">2023.03.16</td>
						</tr>
						<tr>
							<td class="txc">684</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="4" datafield="postTitlNm" style="cursor: pointer;">
									&lt;하나LIVE&gt; 23년 03월 08일 구매자 대상 이벤트 당첨자 안내</a></td>
							<td class="txc">2023.03.10</td>
						</tr>
						<tr>
							<td class="txc">683</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="5" datafield="postTitlNm" style="cursor: pointer;">
									&lt;하나LIVE&gt; 23년 03월 08일 방송 이벤트 당첨자 안내 (스타벅스 기프티콘)</a></td>
							<td class="txc">2023.03.10</td>
						</tr>
						<tr>
							<td class="txc">682</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="6" datafield="postTitlNm" style="cursor: pointer;">
									&lt;하나LIVE&gt; 23년 03월 02일 방송 선착순 이벤트 당첨자 안내 (고급 어메니티 세트)</a></td>
							<td class="txc">2023.03.03</td>
						</tr>
						<tr>
							<td class="txc">681</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="7" datafield="postTitlNm" style="cursor: pointer;">
									&lt;하나LIVE&gt; 23년 03월 02일 방송 소통 이벤트 당첨자 안내 (스타벅스 기프티콘)</a></td>
							<td class="txc">2023.03.03</td>
						</tr>
						<tr>
							<td class="txc">680</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="8" datafield="postTitlNm" style="cursor: pointer;">
									&lt;하나LIVE&gt; 23년 02월 22일 구매인증 이벤트 당첨자 안내 (카야토스트+커피 쿠폰)</a></td>
							<td class="txc">2023.02.23</td>
						</tr>
						<tr>
							<td class="txc">679</td>
							<td class="txc">관리자</td>
							<td class="txl">
								<a rowindex="9" datafield="postTitlNm" style="cursor: pointer;">
									&lt;하나LIVE&gt; 23년 02월 22일 방송 이벤트 당첨자 안내 (스타벅스 기프티콘)</a></td>
							<td class="txc">2023.02.23</td>
						</tr>
					</tbody>
				</table>				
			</div> 
			<div class="paginate_wrap">
				<div class="paginate">
					<div>
						<a href="#none" class="direction prevend" style="display: none;">처음</a> 
						<a href="#none" class="direction prev" style="display: none;">이전</a> 
						<span>
							<strong>1</strong>
							<a href="#none">2</a>
							<a href="#none">3</a>
							<a href="#none">4</a>
							<a href="#none">5</a>
							<a href="#none">6</a>
							<a href="#none">7</a>
							<a href="#none">8</a>
							<a href="#none">9</a>
							<a href="#none">10</a>
						</span> 
							<a href="#none" class="direction next" style="">다음</a> 
							<a href="#none" class="direction nextend" style="">끝</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>