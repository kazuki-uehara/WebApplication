<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/member.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>選手一覧</title>
</head>
<body>
<img src="images/ball.png" id="ball">
         <h1>選手一覧</h1>
<table border="1">
      <c:forEach items="${memberlist}" var="member">
        <tr>
          <td>${fn:escapeXml(member.back_number)}</td>
          <td>${fn:escapeXml(member.name)}</td>
          <td>${fn:escapeXml(member.position)}</td>
          <td>${fn:escapeXml(member.dominant_hand)}</td>
          <td>${fn:escapeXml(member.comment)}</td>
          <td>${fn:escapeXml(member.profile_photo)}</td>
        </tr>
      </c:forEach>
  </table>
</body>
</html>