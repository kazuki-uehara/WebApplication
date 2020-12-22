<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログインページ</title>
</head>
<body>
<c:if test="${not empty msg}">
    <p>${msg}</p>
  </c:if>
<p>ユーザーID、パスワードを入力してください。</p>
<form action="pages" method="post">
ユーザーID：<input type="text" name="id"><br>
パスワード：<input type="text" name="pass"><br>
<button type="submit" name="login" value="check">ログイン</button>
</form>

</body>
</html>