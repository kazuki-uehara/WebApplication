<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.js"></script>
<meta charset="UTF-8">
<title>島連BBC</title>
</head>
  <body>
     <img class="logo" src="images/image1.jpeg">
       <h>島連ＢＢＣ</h>
     <img class="logo" src="images/image1.jpeg">
       <p>
       島連ＢＢＣは沖縄県南部を中心に活動している草野球チームです。<br>
       メンバーは東風平中学校出身のメンバーが中心となっております。
       </p>
    <div class="sliderarea">
      <div class="slide">
      <img src="images/image0.jpeg">
      <img src="images/image2.jpeg">
      <img src="images/image3.jpeg">
      <img src="images/image6.jpeg">
      <img src="images/image9.jpeg">
      </div>
    </div>
    <form action="pages" method="get">
        <button type="submit" name="page" value="member">選手紹介</button>
        <button type="submit" name="page" value="albam">写真・動画</button>
	</form>
	<div>
    <a href="Check.jsp" class="member">メンバーログイン</a>
    </div>
  </body>
 </html>
