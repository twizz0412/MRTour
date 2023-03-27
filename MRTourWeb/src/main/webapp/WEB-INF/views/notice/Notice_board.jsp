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
	<!-- header -->
	<%@ include file="../include/header.jsp"%>
	
	<div id="contents" class="contents">
		<input type="hidden" id="curPage" value="${curPage }"/>
		<center>
		<div class="text_wrap fix">
			<!-- 공지사항 -->
			<strong class="tit big">공지사항</strong> 
			<span class="notice-board">
				<div class="search_field">
					<form action="#" role="search">
						<fieldset>
						<!-- 검색 조건 뷰 -->
							<legend class="blind">공지사항 검색</legend> 
							<div class="box_search">
								<div class="select_item">
									<form action="notice" class="boardsearch" align="left">
										<select class="selectbox" name="searchOption" id="searchOption">
											<option value="" ></option>
											<option value="NOTICE_TITLE" <c:out value="${map.searchOption=='NOTICE_TITLE'?'selected':''}"/> >제목</option>
											<option value="NOTICE_CONTENT" <c:out value="${map.searchOption=='NOTICE_CONTENT'?'selected':''}"/> >내용</option>
										</select>
										<input type="text" id="input_keyword"  value="${keyword}" name="keyword" title="검색어" placeholder="검색어를 입력해 주세요." class="input_keyword"> 
									 	<input type="hidden" name="search" id="search" value="s"/>
									 	<button type="submit" class="btn line">검색</button>
								 	</form>
								</div> 
							 </div>
						 </fieldset>
					 </form>
				 </div>
			 </span>
		 </div>
		 <div class="js_tabs type1">
			 <ul class="tabs" style = "width:100%">
				 <li class="selected" style="width: 24.9%;"><a href="Notice_board">공지사항</a></li>
			 </ul>
		 </div>
		 
		 	<div style="float: right;">
			
			<!-- 검색했을 때 카운트-->
				<c:if test="${map.search eq 's'}">
					<c:choose>
						<c:when test="${map.count == 0 }">
						<br/><span style="font-family:'돋움';">게시글이 없습니다. 검색을 다시 확인해주세요.&nbsp;</span>
						</c:when>
						<c:otherwise>
						<span style="font-family:'돋움';">${map.count}개의 게시물이 있습니다.&nbsp;</span>
						</c:otherwise>
					</c:choose>
				</c:if>
				
			<!-- 회원만 작성 가능 -->
				<c:if test="${member.member_id eq 'admin'}">
					<button type="button" class="text" onClick="location.href='createNotice'">글쓰기</button>
				</c:if>
			</div>
		 
		 <br/><br/><br/>
			<div class="tbl">
				<table class="type1">
					  <colgroup>
					  	<col style="width: 10%;">
					    <col style="width: 10%;">
					    <col>
					    <col style="width: 10%;">
					    <col style="width: 10%;">
					  </colgroup> 
					  <thead>
					    <tr>
					      <th>번호</th>
					      <th>구분</th>
					      <th>제목</th>
					      <th>등록일</th>
					      <th>조회수</th>
					    </tr>
					  </thead> 
					  <tbody>
						<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
							<c:set var="row" value="${map.list[i]}" />
							<input type="hidden" id="notice_no" name="notice_no" value="${row.notice_no}"/>
							<c:choose>
							<%-- 검색결과가 있을 때 --%>
								<c:when test="${not empty row}">
									<tr>
										<td class="txc">${row.notice_no}</td>
										<td class="txc" style="text-align:center;">${row.notice_sub}</td>
										<td class="txl" style="text-align:left;"><a href="view?notice_no=${row.notice_no}&n_show=Y">${row.notice_title}</a>
										<fmt:formatDate value="${now}" pattern="yyyyMMdd" var="today" />
										<fmt:formatDate value="${row.notice_date}" pattern="yyyyMMdd" var="regDate"/>
										<c:choose>
											<c:when test="${today == notice_date}" >
												<td class="txc" style="color:red;">오늘</td>					
											</c:when>
											<c:otherwise>
												<td class="txc">${row.notice_date}</td>
												<td class="txc">${row.n_viewcnt}</td>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:when>
								<%-- 검색결과가 없을 떄 --%>
								<c:when test="${map.count == 0}">
									<tr style="text-align:center;">
										<td colspan='5' size="30px">
											<b style="color: red; font-size:30px;">'${keyword}'</b> 에 대한 검색결과가 없습니다.
										</td>
									</tr>
								</c:when>
							</c:choose>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<br>
			
							<!-- 페이지 네비게이션 출력 -->
				<div align="center">
					<c:if test="${map.pager.curBlock > 1}">
						<a href="notice?curPage=1
								&searchOption=${searchOption}&keyword=${keyword}
								&search=${search}">[처음]</a>
					</c:if>
					<c:if test="${map.pager.curBlock > 1}">
						<a href="notice?curPage=${map.pager.prevPage}
								&searchOption=${searchOption}&keyword=${keyword}
								&search=${search}">[이전]</a>
					</c:if>
	
					<c:forEach var="num" begin="${map.pager.blockBegin}" 
								end="${map.pager.blockEnd}">
						<c:choose>
							<c:when test="${num == map.pager.curPage}">
								<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
								<span style="color: red;">${num}</span>
							</c:when>
							
							<c:otherwise>
								<a href="notice?curPage=${num}
								&searchOption=${searchOption}&keyword=${keyword}
								&search=${search}">${num}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
		
					<c:if test="${map.pager.curBlock < map.pager.totBlock}">
						<a href="notice?curPage=${map.pager.nextPage}
								&searchOption=${searchOption}&keyword=${keyword}
								&search=${search}">[다음]</a>
					</c:if>
					<c:if test="${(map.pager.totPage > 5) && 
					(map.pager.totPage != map.pager.curPage)}">
						<a href="notice?curPage=${map.pager.totPage}
								&searchOption=${searchOption}&keyword=${keyword}
								&search=${search}">[끝]</a>
					</c:if>
				</div>
		</center>
	</div>
	<!-- footer -->
	<div>
	<%@ include file="../include/footer.jsp"%>
	</div>
</body>
</html>