<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="regForm_query.jsp">
	<table border="1" style="text-align:center;">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" value=""></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pw" value=""></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" value=""></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><input type="text" name="tel" value=""></td>
		</tr>
	</table>
	<input type="submit" value="등록">
</form>
<c:if test="${sessionScope.result == 0 }">
	<script>alert("성공")</script>
</c:if>
</body>
</html>