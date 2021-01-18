<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/member.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>選手一覧</title>
</head>
<body>
	<img src="images/ball.png" id="ball">
	<h>選手一覧</h>
	<form:form action="pages" modelAttribute="view" >
          <form:select path="position" items="${position}" multiple="false" />
          <form:button name="select">守備位置検索</form:button>
          </form:form>
	<c:forEach items="${memberlist}" var="member">
		<table border="1" class="table">
			<tr>
				<td class="a"><img src=${fn:escapeXml(member.profile_photo)}></td>
				<td class="b">背番号：${fn:escapeXml(member.back_number)}<br>
					名前： ${fn:escapeXml(member.name)}<br>
					ポジション：${fn:escapeXml(member.position)} <br>
					投打：${fn:escapeXml(member.dominant_hand)}<br>
					ひとこと：${fn:escapeXml(member.comment)}
				</td>
			</tr>
		</table>
	</c:forEach>
	<c:url value="/main" var="url" />
	<p>
		<a href="${url}">トップページに戻る</a>
	</p>

</body>
</html>