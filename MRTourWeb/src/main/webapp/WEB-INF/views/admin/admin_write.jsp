<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="admin_css/admin_write.css">
    <title>mirae admin</title>
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
                            <div class="board_write_wrap">
                                <div class="board_write">
                                    <div class="title">
                                        <dl>
                                            <dd><input type="text" placeholder="제목 입력"></dd>
                                        </dl>
                                    </div>
                                    <div class="cont">
                                        <textarea placeholder="내용 입력"></textarea>
                                    </div>
                                </div>
                                <div class="bt_wrap">
                                    <a href="view.html" class="on">등록</a>
                                    <a href="list.html">취소</a>
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
                        <a href="#"><b>MIREA<br>TOUR</b></a></p>
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