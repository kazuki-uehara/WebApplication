<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/login_member.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>プロフィール編集・登録</title>
</head>
<body>
<img src="images/ball.png" id="ball">
        <h>プロフィール編集</h>
     <img src="images/ball.png" id="ball">
          <form:form action="new_member" modelAttribute="view">
          <form:select path="position" items="${position}" multiple="false" />
          <form:button name="select">守備位置検索</form:button>
          </form:form>
          <c:forEach items="${memberlist}" var="member">
<table border="1" class="table">
        <tr>
          <td class="a"><img src= ${fn:escapeXml(member.profile_photo)}></td>
          <td  class="b">
          背番号：${fn:escapeXml(member.back_number)}<br>
           名前： ${fn:escapeXml(member.name)}<br>
          ポジション：${fn:escapeXml(member.position)}<br>
          投打：${fn:escapeXml(member.dominant_hand)}<br>
          ひとこと：${fn:escapeXml(member.comment)}<br>
          <form:form action="new_member" modelAttribute="view">
          <form:input path="id" type="hidden" name="abc" value="${fn:escapeXml(member.id)}"/>
          <form:input path="name" type="hidden" name="abc" value="${fn:escapeXml(member.name)}"/>
          <form:input path="back_number" type="hidden" name="abc" value="${fn:escapeXml(member.back_number)}"/>
          <form:input path="position" type="hidden" name="abc" value="${fn:escapeXml(member.position)}"/>
          <form:input path="hand" type="hidden" name="abc" value="${fn:escapeXml(member.dominant_hand)}"/>
          <form:input path="comment" type="hidden" name="abc" value="${fn:escapeXml(member.comment)}"/>
			<form:button name="update">変更する</form:button>
			<form:button name="delete" onclick="return confirm('${fn:escapeXml(member.name)}のデータを全て削除します。よろしいですか？')">削除する</form:button>
		</form:form>
		</td>
        </tr>
         </table>
         </c:forEach>
         <div class="new">
     	<form:form action="new_member" modelAttribute="view">
			<form:button name="insert">新規追加</form:button>
		</form:form>
	</div>

<c:url value="/login" var="url" />
	<p>
		<a href="${url}">編集トップページに戻る</a>
	</p>
</body>
</html>