<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
      <form action="Login" method="get">
        <select name="page">
          <option value="全選手">全選手</option>
          <option value="投手">投手</option>
          <option value="捕手">捕手</option>
          <option value="内野手">内野手</option>
          <option value="外野手">外野手</option>
        </select>
        	<input type="submit" value="検索">
      </form>
        <table border="1">
	<c:forEach var="members" items="${Member}">
			<tr>
			<td class="a">写真:${fn:escapeXml(members.photo)}</td>
			<td class="b">背番号：${fn:escapeXml(members.back_Number)} 名前：${fn:escapeXml(members.name)}<br>
			ポジション：${fn:escapeXml(members.position)} 投打：${fn:escapeXml(members.dominant_Hand)}<br>
			ひとこと:${fn:escapeXml(members.comment)}<br>
			<input id="change" type="button" value="変更する" onClick="location.href='parsonal.jsp'">
               <input id="delete" type="submit" value="削除する">
			</td>
			</tr>
			</c:forEach>
			</table>

         <div id="new">
           <a href="parsonal.jsp">+新規メンバー追加</a>
         </div>
           <a href="login.jsp">編集トップページに戻る</a><br>
           <a href="main.jsp">トップページに戻る</a>
</body>
</html>