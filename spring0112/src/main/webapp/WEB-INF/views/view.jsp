<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SNS 댓글</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .comment-container {
            max-width: 600px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .comment-header {
            font-size: 1.8em;
            margin-bottom: 20px;
            color: #3498db;
            text-align: center;
        }

        .comment-item {
            margin-bottom: 20px;
            padding: 15px;
            background-color: #ecf0f1;
            border-radius: 8px;
        }

        .comment-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .comment-content {
            flex: 1;
        }

        .comment-content strong {
            font-weight: bold;
            color: #3498db;
        }

        .comment-content span {
            color: #555;
        }

        .comment-text {
            margin-top: 10px;
            color: #333;
        }

        .comment-footer {
            margin-top: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .comment-time {
            color: #888;
        }

        .comment-like {
            color: #3498db;
            cursor: pointer;
            transition: color 0.3s;
        }

        .comment-like:hover {
            color: #2980b9;
        }

        .comment-reply {
            color: #3498db;
            cursor: pointer;
            transition: color 0.3s;
        }

        .comment-reply:hover {
            color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="comment-container">
        <div class="comment-header">SNS 댓글</div>

        <div class="comment-item">
            <img src="https://placekitten.com/40/40" alt="Avatar" class="comment-avatar">
            <div class="comment-content">
                <strong>사용자1</strong> 님이 댓글을 남겼습니다.
                <span class="comment-time">2시간 전</span>
                <div class="comment-text">
                    이 댓글은 아주 멋져요! 👍
                </div>
                <div class="comment-footer">
                    <span class="comment-like">좋아요</span>
                    <span class="comment-reply">답글</span>
                </div>
            </div>
        </div>

        <div class="comment-item">
            <img src="https://placekitten.com/40/40" alt="Avatar" class="comment-avatar">
            <div class="comment-content">
                <strong>사용자2</strong> 님이 회원님을 팔로우하기 시작했습니다.
                <span class="comment-time">어제</span>
                <div class="comment-footer">
                    <span class="comment-like">좋아요</span>
                    <span class="comment-reply">답글</span>
                </div>
            </div>
        </div>
    </div>
</body>
</html>