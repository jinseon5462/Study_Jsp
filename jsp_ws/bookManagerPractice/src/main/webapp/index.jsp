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
	<input type="text" name="id" placeholder="아이디를 입력해주세요"><br>
	<input type="password" name="pw" placeholder="비밀번호를 입력해주세요"><br>
	<input type="submit" value="로그인">
	<input type="reset" value="초기화">
</form>
</body>
</html>