<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/login_check.css">
<meta charset="UTF-8">
<title>ログインページ</title>
</head>
<body>
<img src="images/ball.png" id="ball">
	<h>メンバーログイン</h>
	<p>ユーザーID、パスワードを入力してください。</p>
	<form:form action="login" modelAttribute="view">
	<p class="ng">${fn:escapeXml(ng)}</p>
		<div>
			ユーザーID：
			<form:input path="id" />
			<form:errors path="id" cssStyle="color: red" />
		</div>
		<div>
			パスワード：
			<form:input path="password" type="password" />
			<form:errors path="password" cssStyle="color: red" />
		</div>
		<div>
			<form:button name="login">ログイン</form:button>
		</div>
	</form:form>
	<c:url value="/main" var="url" />
	<p>
		<a href="${url}">トップページに戻る</a>
	</p>
</body>
</html>