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
         <p>写真・動画</p>
<table border="1">
      <c:forEach items="${matchlist}" var="match_date">
        <tr>
          <td>${fn:escapeXml(match_date.match_day)}</td>
          <td>${fn:escapeXml(match_date.result)}</td>
          <td>${fn:escapeXml(match_date.opponent_team)}</td>
        </tr>
        </c:forEach>
        <c:forEach items="${albumlist}" var="album">
        <tr>
        <td>${fn:escapeXml(album.album_date)}</td>
        </tr>
        </c:forEach>
  </table>
</body>
</html>