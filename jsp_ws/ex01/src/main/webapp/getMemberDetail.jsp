<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 상세조회</title>
</head>
<body>
<h1>회원정보 상세조회</h1>
<hr>
<table border="1">
	<tr>
		<th>id</th>
		<th>pw</th>
		<th>name</th>
		<th>tel</th>
	</tr>
	<tr>
		<th><%=id %></th>
		<th><%=pw %></th>
		<th><%=name %></th>
		<th><%=tel %></th>
	</tr>
</table>
</body>
</html>