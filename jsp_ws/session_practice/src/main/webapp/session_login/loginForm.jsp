<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${requestScope.msg }
<form action="login_do.jsp" method="post">
	id <input type="text" name="id"><br>
	pw <input type="text" name="pw"><br>
	<input type="submit" value="로그인">
</form>
</body>
</html>