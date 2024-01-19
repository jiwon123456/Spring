<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <style>
        /* 기본 스타일 설정 */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* 드롭다운 메뉴 스타일 */
        .dropdown {
            position: relative;
            display: inline-block;
            cursor: pointer;
        }

        /* 드롭다운 텍스트 스타일 */
        .dropdown-text {
            float: right;
            padding-top: 10px;
            font-size: 30px;
            cursor: pointer;
        }

        /* 드롭다운 내용 스타일 (초기에는 숨김) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            top: 60px; /* 드롭다운 메뉴가 텍스트 아래로 나타나도록 조절 */
        }

        /* 드롭다운 내용의 링크 스타일 */
        .dropdown-content a {
            color: black;
            width: 170px;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s, color 0.3s; /* 트랜지션 효과 추가 */
        }

        /* 드롭다운 아이템 호버 시 배경색과 글씨 색상 변경 */
        .dropdown-content a:hover {
            background-color: #ddd; /* 호버 시 배경색 변경 */
            color: #27c6be; /* 호버 시 글씨 색상 변경 */
        }

        /* 드롭다운이 열려 있을 때 스타일 */
        .dropdown.active .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>

<div class="dropdown" onclick="toggleDropdown()">
    <span class="dropdown-text">pending</span>
    <div class="dropdown-content">
        <a href="#">v모두 읽은 상태로 표시</a>
        <a href="#">알림설정</a>
    </div>
</div>

<script>
    function toggleDropdown() {
        var dropdown = document.querySelector('.dropdown');
        dropdown.classList.toggle('active');
    }
</script>

</body>
</html>
