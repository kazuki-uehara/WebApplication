<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>島連BBC</title>
</head>
  <body>
  <img class="logo" src="images/image1.jpeg">
       <h>島連ＢＢＣ</h>
     <img class="logo" src="images/image1.jpeg">
  <p>${fn:escapeXml(main)}</p>

  <div class="sliderarea">
      <div class="slide">
      <c:forEach var="main_photo" items="${main_photo}">
      <img src=${fn:escapeXml(main_photo.slider_photo)}>
      </c:forEach>
      </div>
      </div>

    <form:form action="pages" modelAttribute="view">
        <form:button name="member">選手一覧</form:button>
        <form:button name="album">アルバム一覧</form:button><br>
        <form:button name="login">メンバーログイン</form:button>
	</form:form>
  </body>
 </html>
