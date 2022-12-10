<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
%>

<jsp:useBean id="member" class="vo.MemberVO" scope="session"/>
<jsp:setProperty property="*" name="member"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="400">
	<tr>
		<th>id</th><th>pw</th><th>name</th><th>tel</th>
	</tr>
	<tr>
		<td><jsp:getProperty property="id" name="member"/></td>
		<td><jsp:getProperty property="pw" name="member"/></td>
		<td><jsp:getProperty property="name" name="member"/></td>
		<td><jsp:getProperty property="tel" name="member"/></td>
	</tr>
</table>
</body>
</html>