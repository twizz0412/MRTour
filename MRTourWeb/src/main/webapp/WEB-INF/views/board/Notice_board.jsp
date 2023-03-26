<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>미래투어[공지사항]</title>
	<link rel="stylesheet" type="text/css" href="resources/css/Notice_board.css" />
	<script src="http://code.jquery.com/jquery-latest.js"></script>
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
									<select class="selectbox" name="searchOption" id="searchOption">
										<option value="" ></option>
										<option value="TITLE" <c:out value="${map.searchOption=='TITLE'?'selected':''}"/> >제목</option>
										<option value="CONTENT" <c:out value="${map.searchOption=='CONTENT'?'selected':''}"/> >내용</option>
										<option value="ALL" <c:out value="${map.searchOption=='ALL'?'selected':''}"/> >제목+내용</option>
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
					      <th>구분</th>
					      <th>제목</th>
					      <th>등록일</th>
					    </tr>
					  </thead> 
					  <tbody>
					    <c:forEach begin="1" end="${fn:length(map['list'])}" var="i">
					      <c:set var="row" value="${map['list'][i-1]}" />
					        <tr>
					          	<td class="txc">${row.notice_no}</td>
					          	<td  class="txc" style="text-align:center;">${row.notice_sub}</td>
					          	<td class="txl" style="text-align:left;">
					           		<a href="view?notice_no=${row.notice_no}&show=Y">${row.notice_title}</a>
					          	</td>
					          	<td class="txc">${row.notice_date}</td>
					        </tr>
					    </c:forEach>
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