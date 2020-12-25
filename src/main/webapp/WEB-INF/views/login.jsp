<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/login.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>メンバーページ</title>
</head>
<body>
	<p>こんにちは${fn:escapeXml(user)}さん</p>
	<h>ログインページ</h>
	<dl id="nav">
		<dt>トップページ編集</dt>
		<dd>
			<form:form action="update" modelAttribute="view">
				<p>紹介文更新</p>
				<br>
				<form:textarea path="introduction" placeholder="新しい紹介文を入力してください"></form:textarea>
				<br>
				<form:button name="button">紹介文更新</form:button>

    			スライドショーの画像を更新します。
    			<input type="file" name="slider" multiple="mlutiple"><br>
            <input type="submit" value="更新する">
			</form:form>
		</dd>
	</dl>
	<div>
		<form:form action="update" modelAttribute="view">
			<form:button name="member">選手更新</form:button>
		</form:form>
	</div>
	<div>
		<form:form action="update" modelAttribute="view">
			<form:button name="album">アルバム更新</form:button>
		</form:form>
	</div>
	<div>
		<form:form action="update" modelAttribute="view">
			<form:button name="user">管理者追加</form:button>
		</form:form>
	</div>
	<script>
		$(function() {
			$("#nav dt").on("click", function() {
				$(this).next().slideToggle();
			});
		});
	</script>
</body>
</html>