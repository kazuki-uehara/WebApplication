<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/album.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>アルバム</title>
</head>
<body>
	<img src="images/ball.png" id="ball">
	<h>アルバム</h>
	<dl id="nav">

		<c:forEach items="${matchlist}" var="match_date">
			<dt>
				${fn:escapeXml(match_date.match_day)}
				${fn:escapeXml(match_date.result)}
				${fn:escapeXml(match_date.opponent_team)}<br>
			</dt>
			<dd>
				<c:forEach items="${albumlist}" var="album">
					<c:if test="${match_date.id==album.match_id }">
						<a href=" ${fn:escapeXml(album.album_date)}" target="_blank">
						<img src=" ${fn:escapeXml(album.album_date)}" class="album"></a>
					</c:if>
				</c:forEach>
			</dd>
		</c:forEach>
	</dl>
	<c:url value="/main" var="url" />
	<p>
		<a href="${url}">トップページに戻る</a>
	</p>
	<script>
		$(function() {
			$("#nav dt").on("click", function() {
				$(this).next().slideToggle();
			});
		});
	</script>



</body>
</html>