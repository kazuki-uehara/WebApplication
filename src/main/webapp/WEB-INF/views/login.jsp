<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>メンバーページ</title>
</head>
<body>
 <img src="images/ball.png" id="ball">
        <h>ログインページ</h>
      <dl id="nav">
        <dt>トップページ編集</dt>
          <dd><form id="top">
            <p>紹介文<br>
            <textarea name="紹介文"
             placeholder="島連ＢＢＣは沖縄県南部を中心に活動している草野球チームです。メンバーは東風平中学校出身のメンバーが中心となっております。"></textarea></p>
            <p>スライドショー画像<br>
            <label>画像ファイルの添付</label>
            <input type="file" name="slider" multiple="mlutiple"><br>
            <input type="submit" value="更新する">
          </form></dd>
     </dl>
       <div>
          <form action="Login" method="get">
        <button type="submit" name="page" value="member">プロフィール編集</button>
        </form>
       </div>
       <div>
          <form action="Login" method="get">
        <button type="submit" name="page" value="albam">写真・動画編集</button>
        </form>
        </div>
     <script>
      $(function(){
        $("#nav dt").on("click",function(){
          $(this).next().slideToggle();
        });
      });
    </script>
   <a href="main.jsp">トップページに戻る</a>
</body>
</html>