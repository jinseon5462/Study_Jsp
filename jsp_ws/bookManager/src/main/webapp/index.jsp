<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
<h1>로그인 페이지</h1>
<hr>
<form action="LoginServlet" method="post">
	id : <input type="text" name="id"><br>
	pw : <input type="password" name="pw"><br>
	<input type="submit" value="로그인">
	<input type="reset" value="초기화">
</form>
</body>
</html>