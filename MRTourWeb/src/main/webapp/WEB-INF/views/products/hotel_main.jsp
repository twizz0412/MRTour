<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<meta charset = "utf-8">
	<title>미래투어 [호텔]</title>
<head>
	<link rel="stylesheet" type="text/css" href="resources/css/hotel_main.css" />
</head>

<body>
	<div class="main">
		<section class="upper">
			<div class="ftitle">
				<h1 class="ft_text">숙소 찾기</h1>
			</div>
			<div class="SearchBar">
				<div class="section search" data-section="place">
					<div class="searchBox">
						<div class="BinSB">
							<span class="ChoiceBinSB">여행지</span>
							<span class="EnterBinSB">여행지나 숙소명 검색</span>
						</div>
					</div>
				</div>
				<div class="blank"></div>
				<div class="section search" data-section="date">
					<div class="searchBox">
						<div class="BinSB">
							<span class="ChoiceBinSB">일정</span>
							<span class="EnterBinSB ">언제 떠나시나요?</span>
						</div>
					</div>
				</div>
				<div class="blank"></div>
				<div class="section search" data-section="guest">
					<div class="searchBox">
						<div class="BinSB">
							<span class="ChoiceBinSB">숙박 인원</span>
							<span class="person">성인 2명</span>
						</div>
					</div>
				</div>
				<div class="Find">
					<button disabled class="buttoncss">
						<div class="inBtn ">
							<span class="btnText">숙소 검색</span>
						</div>
					</button>
				</div>
			</div>
		</section>
		
		<!-- 지역 선택 창(총 6개) -->
		<!-- 현재 사진용량이 커서 로딩이 느리므로 용량편집 필요 -->
		
		<section class="middle">
			<div class="middle-top">
				<h2 class="mtitle">인기 여행지</h2>
			</div>
			<div class="locs">
				<div class="location">
					<a href="">
						<div class="eachloc">
							<img alt="서울" src="resources/img/sl4.jpg" data-nimg="fill"  style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
							<div class="locBinB"></div>
							<span class="eachlocText">서울 숙소</span>
						</div>
					</a>
				</div>
				<div class="location">
					<a href="">
						<div class="eachloc">
							<img alt="제주도" src="resources/img/jj14.jpg" data-nimg="fill" style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
							<div class="locBinB"></div>
							<span class="eachlocText">제주도 숙소</span>
						</div>
					</a>
				</div>
				<div class="location">
					<a href="">
						<div class="eachloc">
							<img alt="강릉" src="resources/img/gr12.jpg" data-nimg="fill" style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
							<div class="locBinB"></div>
							<span class="eachlocText">강릉 숙소</span>
						</div>
					</a>
				</div>
				<div class="location">
					<a href="">
						<div class="eachloc">
							<img alt="부산" src="resources/img/bs_sea5.jpg"  data-nimg="fill" style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
							<div class="locBinB"></div>
							<span class="eachlocText">부산 숙소</span>
						</div>
					</a>
				</div>
				<div class="location">
					<a href="">
						<div class="eachloc">
							<img alt="경주" src="resources/img/gj12.jpg"  data-nimg="fill" style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
							<div class="locBinB"></div>
							<span class="eachlocText">경주 숙소</span>
						</div>
					</a>
				</div>
				<div class="location">
					<a href="">
						<div class="eachloc">
							<img alt="여수" src="resources/img/ys3.jpg"  data-nimg="fill" style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
							<div class="locBinB"></div>
							<span class="eachlocText">여수 숙소</span> <!-- 사진 늘어져서 교체 필요 -->
						</div>
					</a>
				</div>
			</div>	
		</section>
	</div>
</body>
</html>
