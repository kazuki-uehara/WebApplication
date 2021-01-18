<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="CSS/parsonal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<title>編集ページ</title>
</head>
<body>
<div class="title">
        <img src="images/ball.png" id="ball">
        <h>登録・変更フォーム</h>
      </div>
      <form:form action="new_member"  modelAttribute="view" enctype="multipart/form-data">
      名前：<form:input path="name"/><form:errors path="name" cssStyle="color: red"/><br>
      背番号：<form:input type="back_number" path="back_number"/><form:errors path="back_number" cssStyle="color: red"/><br>
      ポジション：<form:select path="position" items="${position}" multiple="false" /><form:errors path="position" cssStyle="color: red"/><br>
      投打：<form:select path="hand" items="${hand}" multiple="false" /><form:errors path="hand" cssStyle="color: red"/><br>
	  ひとこと：<form:textarea path="comment"/><form:errors path="comment" cssStyle="color: red"/><br>
	  プロフィール写真：<form:input type="file" path="profile_photo" accept="image/*" /><form:errors path="profile_photo" cssStyle="color: red"/><br />

					<form:button name="member">登録する</form:button>
      </form:form>
      <c:url value="/login" var="url" />
	<p>
		<a href="${url}">編集トップページに戻る</a>
	</p>
</body>
</html>