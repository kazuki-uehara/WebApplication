<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログインページ</title>
</head>
<body>
<p>ユーザーID、パスワードを入力してください。</p>
<form:form action="login" modelAttribute="view">
  <div>ユーザーID：<form:input path="id" /></div>
  <div>パスワード：<form:input path="password" /></div>
  <div><form:button name="login">ログイン</form:button></div>
</form:form>
</body>
</html>