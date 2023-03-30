<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/css/admin_css/admin_mem.css">
    <title>MRT Admin</title>
    
    <script>
		// 게시물 삭제 확인
		function deleteM() {
			swal({
				 icon: "warning",
				 text: "정말 이 회원을 추방하시겠습니까?",
				 closeOnClickOutside : false,
				 closeOnEsc : false, 
				 buttons: ["돌아가기", "추방하기"],
				}).then(function(isConfirm) {
				  if (isConfirm) {
				    swal('삭제 완료!','이 회원을 추방했습니다.','success').then(function(isConfirm)
				   		{
							location.href='delete?member_id='+${member.member_id};
				    	});
				  }
				})
		}
		$("#list_btn").click(function(){
			self.location="board?"
					+ "searchOption=${searchOption}&keyword=${keyword}"
					+ "&search=${search}&curPage=${curPage}";
		});
	</script>
</head>

<body>
    <div class="container right-panel-active">
        <!-- Sign Up -->
        <div class="container__form container--signup">
            <form action="#" class="form" id="form1">
                <div class="board_wrap">
                    <div class="board_title">
                        <strong>회원관리</strong>
                    </div>
                    <div class="board_list_wrap">
                        <div class="board_list">
                            <div class="top">
                                <table>
                                 	<thead>
	                                    <tr> 
	                                        <td><div class="SEQ">고유번호</div></td>
	                                        <td><div class="name">이름</div></td>
	                                        <td><div class="id">아이디</div></td>
	                                        <td><div class="birth">생년월일</div></td>
	                                        <td><div class="phone">연락처</div></td>
	                                        <td><div class="EMAIL">이메일</div></td>
	                                        <td><div class="delete">추방</div></td>
	                                    </tr>
                                  	 </thead> 
                                     <tbody>		
										<c:forEach begin="1" end="${(fn:length(map.list))}" var="i">
											<c:set var="member" value="${map.list[i-1]}" />
											<tr>
												<td><div class="SEQ">${member.member_seq}</div></td>
		                                        <td><div class="name">${member.member_name}</div></td>
		                                        <td><div class="id">${member.member_id}</div></td>
		                                        <td><div class="birth">${member.member_birth}</div></td>
		                                        <td><div class="phone">${member.member_phone}</div></td>
		                                        <td><div class="EMAIL">${member.member_email}</div></td>
		                                        <td><div class="choice"><a href="#" id="list_btn"onClick="deleteM()">추방</a></div></td>
											</tr>
										</c:forEach>
									</tbody>
                  			   </table>
                   			</div>
                   		</div>
                   		<br>
			                    
			           <!-- 페이지 네비게이션 출력 -->
						<div align="center" id = "board_page">
							<c:if test="${map.pager.curBlock > 1}">
								<a href="board?curPage=1
										&searchOption=${searchOption}&keyword=${keyword}
										&search=${search}">[처음]</a>
							</c:if>
							<c:if test="${map.pager.curBlock > 1}">
								<a href="board?curPage=${map.pager.prevPage}
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
										<a href="board?curPage=${num}
										&searchOption=${searchOption}&keyword=${keyword}
										&search=${search}">${num}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
									
							<c:if test="${map.pager.curBlock < map.pager.totBlock}">
								<a href="board?curPage=${map.pager.nextPage}
										&searchOption=${searchOption}&keyword=${keyword}
										&search=${search}">[다음]</a>
							</c:if>
							<c:if test="${(map.pager.totPage > 5) && 
							(map.pager.totPage != map.pager.curPage)}">
								<a href="board?curPage=${map.pager.totPage}
										&searchOption=${searchOption}&keyword=${keyword}
										&search=${search}">[끝]</a>
							</c:if>
						</div>
                    </div>
                </div>
            </form>
        </div>        
</body>
</html>