<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>글쓰기</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/write.css">
</head>
<body>
<section>
    <h1>관리자 글쓰기</h1>
    <hr>

    <form action="bInsert2" name="insertFrm" method="post" enctype="multipart/form-data">
      <table>
        <colgroup>
          <col width="15%">
          <col width="85%">
        </colgroup>
        <tr>
          <th>작성자</th>
          <td>
             <input type="text" name="id">
          </td>
        </tr>
        <tr>
          <th>제목</th>
          <td>
            <input type="text" name="btitle">
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <textarea name="bcontent" cols="50" rows="10"></textarea>
          </td>
        </tr>
        <tr>
          <th>이미지 표시</th>
          <td>
            <input type="file" name="files" id="file">
          </td>
        </tr>
        <tr>
          <th>이미지 표시</th>
          <td>
            <input type="file" name="files" id="file">
          </td>
        </tr>
        <script>
        	$(function(){
        		$("#imgName").change(function(){
        			console.log("파일이 첨부됩니다.");
        			var imgFile = $("#imgName")[0].files;
        			console.log("파일첨부 개수 :"+imgFile.length);
        			var fileCount = imgFile.length;
        			if(fileCount>0){
        				var imgFileName="";
        				for(var i=0;i<fileCount;i++){
        					console.log("파일이름 : "+imgFile[i].name);
        					imgFileName += imgFile[i].name+"<br>";
        				}//for
        				$("#imgLocation").html(imgFileName);
        				
        			}//if
        			
        		});//imgName
        		
        	});//jquery
        </script>
        <tr>
          <th>이미지 표시</th>
          <td>
           <!--  <input type="file" name="files" id="imgName" multiple> -->
          </td>
        </tr>
        <tr>
          <th>이미지 이름</th>
          <td id="imgLocation" style="border:2px solid #ccc;">
          	
          </td>
        </tr>
      </table>
      <hr>
      <div class="button-wrapper">
        <button type="submit" class="write">작성완료</button>
        <button type="button" class="cancel" onclick="javascript:location.href='/'">취소</button>
      </div>
    </form>

  </section>

</body>
</html>