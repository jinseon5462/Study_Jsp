<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인 폼</h1>
<hr>
<form action="testLogin.jsp" method="post">
<!-- 로그인 서블릿에서 메소드가 doGet일경우 method = post방식 사용할 수 없음(반대경우도)
	메소드가 service일 경우 method = post/get방식 모두 사용가능 -->
	id : <input type="text" name="id"><br>
	pw : <input type="password" name="pw"><br>
	<input type="submit" value="로그인">
</form>
</body>
</html>