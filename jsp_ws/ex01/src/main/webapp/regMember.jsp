<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>
<h2>회원등록</h2>
<hr>
<form action="insertMember.jsp" method="post">
	<input type="text" name="id" placeholder="아이디를 입력하세요"/><br>
	<input type="password" name="pw" placeholder="비밀번호를 입력하세요"/><br>
	<input type="text" name="name" placeholder="이름을 입력하세요"/><br>
	<input type="text" name="tel" placeholder="전화번호를 입력하세요"/><br>
	<input type="submit" value="가입"/>
	<input type="reset" value="초기화"/>
</form>
</body>
</html>