<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<meta charset = "utf-8">
	<title>미래투어 [티켓]</title>
<head>
	<style scoped>
		@import "../css/ticket_main.css";
	</style>
</head>

<body>
	<div class = "main-page">
		<div class="main-visual">
			<div  class="main-banner" style="height : 470px; opacity: 1; ">
				<a  href="">
					<img  src="../img/test_img2.jpg" alt="기분좋은 날 서핑">
				</a>
			</div>
			<div class="main-visual_search">
				<div class="catchphrase">
					<input type = "text" placeholder = "여행지, 상품, 장소를 검색해 보세요 " id = "tk_search">
					<button>
						<i class="icon search"></i>
					</button>
				</div> 
			</div>
		</div>

	
	<section class="recommend-section" >
			<div class="container">
							
				<!-- MRT's CHOICE -->
		
				<div class="rounded-title">   		
					<span style="color: rgb(199, 238, 255); font-size : 30px;">MRT's CHOICE</span> 
					<svg xmlns="http://www.w3.org/2000/svg">
						<rect x="0" y="0" width="100%" height="100%" rx="13px" ry="13px"
							 style="stroke: rgb(199, 238, 255);"></rect>
						<circle cx="24" cy="0" r="1.5" stroke="rgb(199, 238, 255)" 
								fill="rgb(199, 238, 255)"></circle>
					</svg>
				</div> 
								
				<!-- 테마 문구 -->
					
				<h2 class="section-title" style = "padding-top : 10px; font-size : 33px;">
					<span>🌸흩날리는 벚꽃잎과 함께하는 봄여행~🧳 </span>
				</h2>
												
				<!-- 동그라미 -->
							
				<div class="loc-part">
					<div class="rec-loc"> <!-- container -->
						<div class="rec-loc-in">
						
						<!-- 각 동그라미들 -->
							<div class="rec-loc-each" style="width: 350px; margin-right: 40px;">
								<a href="" class="theme-card" data-lazy-view="true" data-in-view="true">
								<div class="item-tn">
									<div class = "item_tk">
										<img src="" alt="" class="img-cover">
									</div>
								</div>
									<div class="loc-item">
										<p class="loc-item-city">제주도</p> 
										<p class="loc-item-desc">유채꽃 보러, JEJU</p>
									</div>
								</a>
							</div>
							<div  class="rec-loc-each" style="width: 350px; margin-right: 40px;">
								<a href="" class="theme-card" data-lazy-view="true" data-in-view="true" >
									<div class="item-tn">
										<div class = "item_tk">
											<img src="" alt="" class="img-cover">
										</div>
									</div>
									<div class="loc-item">
										<p class="loc-item-city">경주</p> 
										<p class="loc-item-desc">역사와 함께하는 꽃놀이</p>
									</div>
								</a>
							</div>
							<div class="rec-loc-each" style="width: 350px; margin-right: 40px;">
								<a href="" class="theme-card" data-lazy-view="true" data-in-view="true">
									<div class="item-tn">
										<div class = "item_tk">
											<img src="" alt="" class="img-cover">
										</div>
									</div>
									<div class="loc-item">
										<p class="loc-item-city">서울</p>
										<p class="loc-item-desc">벚꽃과 함께하는 롯데월드🎠</p>
									</div>
								</a>
							</div>
							<div class="rec-loc-each" style="width: 350px; margin-right: 40px;">
								<a href="" class="theme-card" data-lazy-view="true" data-in-view="true">
									<div class="item-tn">
										<div class = "item_tk">
											<img src="" alt="" class="img-cover">
										</div>
									</div>
									<div class="loc-item">
										<p class="loc-item-city">부산(경남)</p>
										<p class="loc-item-desc">HOT한 부산 롯데월드가기</p>
									</div>
								</a>
							</div>
							<div class="rec-loc-each" style = "width: 350px; margin-right: 40px;">
								<a href="" class="theme-card" data-lazy-view="true" data-in-view="true">
									<div class="item-tn">
										<div class = "item_tk">
											<img src="" alt="" class="img-cover">
										</div>
									</div>
									<div class="loc-item">
										<p class="loc-item-city">여수</p>
										<p class="loc-item-desc">여수밤바다</p>
									</div>
								</a>
							</div>
							<div class="rec-loc-each" style="width: 350px; margin-right: 40px;">
								<a href="" class="theme-card" data-lazy-view="true" data-in-view="true">
									<div class="item-tn">
										<div class = "item_tk">
											<img src="" alt="" class="img-cover">
										</div>
									</div>
									<div class="loc-item">
										<p class="loc-item-city">강릉</p>
										<p class="loc-item-desc">봄맞이 서핑 함께해요</p>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
		</div>
	</section>	
	</div>
</body>
</html>
