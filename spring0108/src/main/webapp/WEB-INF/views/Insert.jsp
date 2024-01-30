<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  <script src="https://code.jquery.com/jquery-latest.min.js"></script>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="imagetoolbar" content="no">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <meta name="title" content="웹사이트">
  <meta name="description" content="웹사이트입니다.">
  <meta name="keywords" content="키워드,키워드,키워드">
  <meta property="og:title" content="웹사이트">
  <meta property="og:description" content="웹사이트입니다">
  <meta property="og:image" content="https://웹사이트/images/opengraph.png">
  <meta property="og:url" content="https://웹사이트">
  <title>첫페이지 | 팀2</title>
  <link rel="stylesheet" href="../resources/css/template.css">
  <link rel="stylesheet" href="../resources/css/style2.css">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SIGN-UP AMPM</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="css/Insert.css" media="screen" title="no title" charset="utf-8">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <script src="../resources/js/setting.js"></script>
  <script src="../resources/js/plugin.js"></script>
  <script src="../resources/js/template.js"></script>
  <script src="../resources/js/common.js"></script>
  <script src="../resources/js/script.js"></script>	
  <body data-aos-easing="ease" data-aso-duration="400" data-aos-delay="0">
  	<div width=100%>
	<iframe src="html/header.jsp" frameborder="0" scrolling="no" width="100%" height="200px" style="margin:auto;"></iframe>
  	</div>
      <article class="container">
        <div class="page-header">
          <h1>회원가입 <small>Sign up</small></h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
            <div class="form-group">
              <label for="InputId">아이디</label>
              <input type="text" class="form-control" id="Id" placeholder="아이디">
            </div>
			
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="form-control" id="Password" placeholder="비밀번호">
            </div>
			
            <div class="form-group">
              <label for="InputPassword2">비밀번호 확인</label>
              <input type="password" class="form-control" id="Password2" placeholder="비밀번호 확인">
              <p class="help-block">비밀번호 확인을 위해 다시 한번 입력 해 주세요</p>
            </div>
            
            <div class="form-group">
              <label for="username">이름</label>
              <input type="text" class="form-control" id="Name" placeholder="이름을 입력해 주세요">
            </div>
           
            <div class="form-group">
              <label for="InputEmail">이메일 주소</label>
              <input type="email" class="form-control" id="Email" placeholder="이메일 주소를 입력해 주세요">
            </div>
           
            <div class="form-group text-center">
              <button type="submit" class="btn btn-warning">상점등록<i class="fa fa-times spaceLeft"></i></button>
            </div>
            
		   <hr class="mb-4">
			<div class="agreecheckbox">
					<input type="checkbox" name="f_agree" id="f_agree" value="agree">
					<label for="f_agree">이용약관에 동의합니다.</label>
				</div>

            
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
            </div>
        </div>

      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
