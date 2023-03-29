<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
		<title>미래투어 - 관리자 상품 등록 페이지</title>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
 	<script src="resources/js/product.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		
		
			<!--	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
				<script src="resources/ckeditor/ckeditor.js"></script>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		 -->
	</head>
	<body>
		
		<section>
			<h2 align="center">상품 등록</h2>
			<form id="fileForm" action="insertProduct" method="POST" enctype="multipart/form-data">
				<table align="center">
					<tr>
						<th>상품 유형</th>
						<td>
							<select name="cate_id" id="cate_id" style="width: 150px; height: 24px;">
								<option value="">::선택::</option>
								<option value="C001">렌트카</option>
								<option value="H002">호텔</option>
								<option value="T003">티켓</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>상품명</th>
						<td>
							<input type="text" name="prd_name" id="prd_name" />
						</td>
					</tr>
					<tr>
						<th>도시</th>
						<td>
							<select name="city_no" id="city_no" style="width: 150px; height: 24px;">
								<option value="">::선택::</option>
								<option value="sl">서울</option>
								<option value="gr">강릉</option>
								<option value="ys">여수</option>
								<option value="gj">경주</option>
								<option value="bs">부산</option>
								<option value="jj">제주</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>상품 번호</th>
						<td>
							<input type="text" name="prd_id" id="prd_id" />
							<input type="button" value="중복 확인" onclick="prdCheckID()"><br/>
						</td>
					</tr>
					<tr>
						<th>상품 가격</th>
						<td>
							<input type="text" name="prd_price" id="prd_price" />
						</td>
					</tr>
					<tr>
						<th>상품 옵션</th>
						<td>							
						<select name="prd_option" id="prd_option" style="width: 150px; height: 24px;">
								<option value="" selected>::선택::</option>
								<option value="sgl">싱글룸</option>
								<option value="dbl">더블룸</option>
								<option value="sut">스위트룸</option>
								<option value="gsl">가솔린</option>
								<option value="dsl">디젤</option>
							</select>	
						</td>
					</tr>
					<tr>
						<th>이미지</th>
						<td>
							<input type="file" id = "prd_img" name="uploadFile"/>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
						<button type="button" onclick="doInsertProduct()">
								<span>등록</span>
						</button>
						</td>
					</tr>
				</table>
			</form>
		</section>
		
	</body>
</html>