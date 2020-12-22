<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/login_albam.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>写真・動画編集</title>
</head>
<body>
 <img src="images/ball.png" id="ball">
        <h>写真・動画編集</h>
      <form action="Login" method="post">
            日付：<input type="date" name="day"><br>
            勝敗：<input type="text" name="winner"><br>
            相手チーム<input type="text" name="name"><br>
            画像<input type="file" name="albam" > <br>
            <button type="submit" name="button" value="insert_albam">新規作成</button>
          </form>
        <table border="1">
	<c:forEach var="match" items="${Match}">
			<tr>
			<td>${fn:escapeXml(match.match_Day)}</td>
			<td>${fn:escapeXml(match.result)}</td>
			<td>${fn:escapeXml(match.team_Name)}</td>
			</tr>
			<tr>
			<td>${fn:escapeXml(match.pass)}</td>
			</tr>
			</c:forEach>
			</table>
        <a href=login.jsp>編集トップページに戻る</a><br>
        <a href=main.jsp>トップページに戻る</a>
</body>
</html>