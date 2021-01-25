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
	<img src="images/ball.png" id="ball">
	<h>ログインページ</h>
	<p class="a">${fn:escapeXml(introduction)}</p>
	<dl id="nav">
		<dt>トップページ編集</dt>
		<dd>
			<form:form action="update" modelAttribute="view">
				<p>紹介文更新</p>
				<br>
				<form:textarea path="introduction" placeholder="${fn:escapeXml(main)}"></form:textarea>
				<form:errors path="introduction" cssStyle="color: red" />
				<br>
				<form:button name="button">紹介文更新</form:button>
				<br>
			</form:form>
			<form:form action="update" modelAttribute="view"
				enctype="multipart/form-data">
				<form method="POST" enctype="multipart/form-data"
					action="../UploadServlet">
					<p>スライドショー画像の更新</p>
					<input type="file" name="file" multiple="multiple" accept="image/*" /><br />
					<form:button name="photo">画像更新</form:button>
				</form>
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
	<c:url value="/main" var="url" />
	<p>
		<a href="${url}">ログアウト</a>
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
						var type = file.type;
						if (type != 'image/jpeg' && type != 'image/gif' && type != 'image/png' && type != 'application/pdf') {
							alert('形式が違います。画像を選択してください');
							$(this).val('');
						    }
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