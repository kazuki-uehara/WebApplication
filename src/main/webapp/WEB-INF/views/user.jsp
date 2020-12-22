<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>新規アカウントを作成します。<br>
名前、ID、パスワードを入力してください。</p>
<form action="user" method="post">
名前：<input type="text"><br>
ID：<input type="text"><br>
パスワード：<input type="text"><br>
<button type="submit">追加する</button>
</form>
<a href="login.jsp">編集トップページに戻る</a>
</body>
</html>