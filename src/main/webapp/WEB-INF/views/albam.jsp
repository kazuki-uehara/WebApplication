<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/albam.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>アルバム</title>
</head>
<body>
<img src="images/ball.png" id="ball">
         <h>写真・動画</h>
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

       <a href=main.jsp>トップページに戻る</a>
</body>
</html>