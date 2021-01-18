<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/user.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>管理者編集</title>
</head>
<body>
	<img src="images/ball.png" id="ball">
	<h>アカウント管理</h>
	<dl id="acMenu">
		<dt>新規アカウント作成</dt>
		<dd>
			名前、ID、パスワードを入力してください。<br>
			<form:form action="new_user" modelAttribute="view">
ID：<form:input path="user_id" />
				<form:errors path="user_id" cssStyle="color: red" />
				<br>
パスワード：<form:input path="password" />
				<form:errors path="password" cssStyle="color: red" />
				<br>
名前：<form:input path="user_name" />
				<form:errors path="user_name" cssStyle="color: red" />
				<br>
				<form:button name="insert">追加する</form:button>
				</form:form>
		</dd>
		<dt>アカウント削除</dt>
		<dd>
		現在のアカウント一覧<br>
		<form:form action="new_user" modelAttribute="view">
		<c:forEach items="${userlist}" var="user">
		<label>
		<input name="album_date" class="check" type="radio"value="${fn:escapeXml(user.user_name)}" />
		${fn:escapeXml(user.user_name)}</label>
		<form:input path="user_name" type="hidden" value="${fn:escapeXml(user.user_name)}" />
		<form:button name="delete" onclick="return confirm('${fn:escapeXml(user.user_name)}のアカウントを削除します。よろしいですか？')">削除する</form:button><br>
		</c:forEach>
		</form:form>
		</dd>
		</dl>
		<c:url value="/login" var="url" />
		<p>
			<a href="${url}">編集トップページに戻る</a>
		</p>
		<script>
      $(function(){
        $("#acMenu dt").on("click",function(){
          $(this).next().slideToggle();
        });
      });
     </script>
</body>
</html>