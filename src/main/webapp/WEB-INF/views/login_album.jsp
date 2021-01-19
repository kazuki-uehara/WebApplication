<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/login_album.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>アルバム編集</title>
</head>
<body>
	<img src="images/ball.png" id="ball">
	<h>アルバム編集</h>
	<dl id="nav">
		<c:forEach items="${matchlist}" var="match_date">
			<dt>${fn:escapeXml(match_date.match_day)}
				${fn:escapeXml(match_date.result)}
				${fn:escapeXml(match_date.opponent_team)}</dt>
			<dd>
				<form:form action="new_album" modelAttribute="view"
					enctype="multipart/form-data">
					<c:forEach items="${albumlist}" var="album">
						<c:if test="${match_date.id==album.match_id }">

							<label><input name="album_date" class="check"
								type="checkbox" value="${fn:escapeXml(album.album_date)}" /> <img
								src=" ${fn:escapeXml(album.album_date)}" class="album"></label>
						</c:if>
					</c:forEach>
					<br>
					<form:button name="select">選択した画像を削除</form:button>
				</form:form>
				<div>
					<form:form action="new_album" modelAttribute="view"
						enctype="multipart/form-data">
						<form:input path="id" type="hidden" name="abc"
							value="${fn:escapeXml(match_date.id)}" />
						<form:input path="day" type="hidden" name="abc"
							value="${fn:escapeXml(match_date.match_day)}" />
						<form:input path="result" type="hidden" name="abc"
							value="${fn:escapeXml(match_date.result)}" />
						<form:input path="opponent_team" type="hidden" name="abc"
							value="${fn:escapeXml(match_date.opponent_team)}" />
						<input type="file" name="file" multiple="multiple"
							accept="image/*" />
						<form:button name="update">写真を追加する</form:button>
						<br>
						<form:button name="delete"
							onclick="return confirm('${fn:escapeXml(match_date.match_day)}のデータを全て削除します。よろしいですか？')">全て削除する</form:button>
					</form:form>
				</div>
			</dd>
		</c:forEach>
		<dt>新規追加</dt>
		<dd>
			<form:form action="new_album" modelAttribute="view"
				enctype="multipart/form-data">
  			日付：<form:input type="date" path="day" />
				<form:errors path="day" cssStyle="color: red" />
				<br>
  			勝敗：<form:input path="result" />
				<form:errors path="result" cssStyle="color: red" />
				<br>
  			相手チーム：<form:input path="opponent_team" />
				<form:errors path="opponent_team" cssStyle="color: red" />
				<br>
  			写真：
				<input type="file" name="file" multiple="multiple" accept="image/*" />
				<br>
				<form:button name="new_album">新規追加</form:button>
			</form:form>
		</dd>
	</dl>
	<c:url value="/login" var="url" />
	<p>
		<a href="${url}">編集トップページに戻る</a>
	</p>
	<script>
		$(function() {
			$("#nav dt").on("click", function() {
				$(this).next().slideToggle();
			});
		});
	</script>
	<script>
		$(function() {
			$('input[type=file]').change(function() {
				//サイズ計算
				var total_size = 0;
				$('input[type=file]').each(function() {
					if ($(this).val()) {
						var file = $(this).prop('files')[0]; // ※1
						total_size = total_size + file.size;
					}
				});
				//1メガを越えた場合はアラート表示
				if (1000000 < total_size) {
					alert('一度にアップできる容量を超えました');
					$(this).val('');
				}
			});
		});
	</script>

</body>
</html>