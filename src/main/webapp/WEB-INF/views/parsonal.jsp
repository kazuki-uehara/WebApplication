<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <form action="Login" method="post">
      背番号：<input type="number" name="back_number"><br>
      名前：<input type="text" name="name"><br>
      ポジション： <select multiple="multiple" name="position">
          <option value="投手">投手</option>
          <option value="捕手">捕手</option>
          <option value="内野手">内野手</option>
          <option value="外野手">外野手</option>
        </select><br>
        投打： <select name="hand">
          <option value="右投右打">右投右打</option>
          <option value="右投左打">右投左打</option>
          <option value="右投両打">右投両打</option>
          <option value="左投左打">左投左打</option>
          <option value="左投左打">左投左打</option>
          <option value="左投両打">左投両打</option>
        </select><br>
        ひとこと：<input type="text" name="comment"><br>
        <label>プロフィール写真:
            <input type="file" name="photo" multiple="multiple"></label><br>
        <button type="submit" name="button" value="insert_member">登録</button>
      </form>
        <form action="Login" method="get">
        <button type="submit" name="page" value="member">プロフィール編集に戻る</button>
        </form>
</body>
</html>