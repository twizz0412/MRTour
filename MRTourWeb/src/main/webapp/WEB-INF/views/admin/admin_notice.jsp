<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/css/admin_css/admin_notice.css">
    <title>MRT Admin</title>
</head>

<body>
    <div class="container right-panel-active">
        <!-- Sign Up -->
        <div class="container__form container--signup">
            <form action="#" class="form" id="form1">
                <div class="board_wrap">
                    <div class="board_title">
                        <strong>공지사항</strong>
                    </div>
                    <div class="board_list_wrap">
                        <div class="board_list">
                            <div class="top">
                                <div class="num">번호</div>
                                <div class="title">제목</div>
                                <div class="writer">글쓴이</div>
                                <div class="date">작성일</div>
                                <div class="count">조회</div>
                            </div>
                            <div>
                                <div class="num">5</div>
                                <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
                                <div class="writer">김이름</div>
                                <div class="date">2021.1.15</div>
                                <div class="count">33</div>
                            </div>
                        <div>
                            <div class="num">4</div>
                            <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
                            <div class="writer">김이름</div>
                            <div class="date">2021.1.15</div>
                            <div class="count">33</div>
                        </div>
                        <div>
                            <div class="num">3</div>
                            <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
                            <div class="writer">김이름</div>
                            <div class="date">2021.1.15</div>
                            <div class="count">33</div>
                        </div>
                        <div>
                            <div class="num">2</div>
                            <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
                            <div class="writer">김이름</div>
                            <div class="date">2021.1.15</div>
                            <div class="count">33</div>
                        </div>
                        <div>
                            <div class="num">1</div>
                            <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
                            <div class="writer">김이름</div>
                            <div class="date">2021.1.15</div>
                            <div class="count">33</div>
                        </div>
                    </div>
                    <div class="board_page">
                        <a href="#" class="bt first"><<</a>
                        <a href="#" class="bt prev"><</a>
                        <a href="#" class="num on">1</a>
                        <a href="#" class="num">2</a>
                        <a href="#" class="num">3</a>
                        <a href="#" class="num">4</a>
                        <a href="#" class="num">5</a>
                        <a href="#" class="bt next">></a>
                        <a href="#" class="bt last">>></a>
                    </div>
                    <div class="bt_wrap">
                        <a href="admin_write" class="on">등록</a>
                        <!--<a href="#">수정</a>-->
                    </div>
                    </div>
                </div>
            </form>
        </div>


        <!-- Overlay -->
        <div class="container__overlay">
            <div class="overlay">
                <div class="overlay__panel overlay--left">
                    <p style="font-size: 80px; color:#fff; text-shadow:0px 0px 50px #a1e4ff">
                        <a href="admin_main"><b>MIREA<br>TOUR</b></a>
                    </p>
                </div>
            </div>
        </div>



        <script>
            const signUpBtn = document.getElementById("signUp");
            const fistForm = document.getElementById("form1");
            const container = document.querySelector(".container");


            signUpBtn.addEventListener("click", () => {
                container.classList.add("right-panel-active");
            });

            fistForm.addEventListener("submit", (e) => e.preventDefault());

        </script>
</body>

</html>