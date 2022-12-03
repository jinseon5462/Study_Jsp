<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Simple Cafe</title>
</head>
<body>
<h1>My Simple Cafe</h1>
<hr>
<img src="coffe.png" width="200px" alt="커피이미지">커피
<img src="cola.png" width="180px" alt="콜라이미지">콜라
<img src="juice.png" width="200px" alt="주스이미지">주스
<form action="CafeServlet" method="get">
	메뉴 선택 :
	<select name="drink" size="1">
		<option value="">선택하세요</option>
		<option value="랜덤커피">랜덤 커피(3000원)</option>
		<option value="콜라">콜라(2000원)</option>
		<option value="주스">주스(2500원)</option>
	</select>
	<input type="submit" value="주문">
</form>
</body>
</html>