<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("loginUser") != null){
		response.sendRedirect("3_main.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ActionTagForm</title>
</head>
<body>
<form action="3_session_Test.jsp">
	아이디 : <input type="text" name="userID"><br>
	암&nbsp;&nbsp;&nbsp;호 : <input type="password" name="userPwd"><br>
	이&nbsp;&nbsp;&nbsp;름 : <input type="text" name="name"><br>
	<input type="submit" value="로그인">
</form>
</body>
</html>