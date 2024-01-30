<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login2.css">
    <title>로그인</title>
</head>
<body>
    <section class="wrap">
        <section class="all-signup">
            <section class="signup">
                <header class="header">
                    <h1>Login</h1>
                </header>
                <section class="inputlist">
                    <form action="/signup.html" method="post">
                        <input type="id" name="ID" placeholder="아이디" class="inputbox" id="id"><br>
                        <input type="password" name="PASSWORD" placeholder="비밀번호"class="inputbox" id="password"><br>
                        <div class="loginsign">  
                            <a class="signupbtn" href="/Insert">Sign up</a>
                            <a class="login" href="">Log in</a>
                        </div>  
                    </form>
                </section>
            </section>
            <section class="sns_signup">
                <header class = "sns_header">
                    <h1><img src="images/logo.png" width="80" border="2px solid white" > <br> social network</h1>
                </header>
                <section class = "sns_login">
                    <a class="btn facebook" href="https://www.facebook.com">Facebook</a>
                    <a class="btn kakao" href="https://www.kakaocorp.com">kakao</a>
                    <a class="btn naver" href="https://www.naver.com">Naver</a>
                </section>
            </section>
        </section>
    </section>
    
</body>
</html>