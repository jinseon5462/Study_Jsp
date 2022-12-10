<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:query var="rs" dataSource="jdbc/maria">
	SELECT * FROM member
</sql:query>
<h3>SQL Tag 연습</h3>
<hr>
<table border="1">
	<tr>
		<c:forEach var="columnName" items="${rs.columnNames }">
			<th><c:out value="${columnName }"/></th>
		</c:forEach>
	</tr>
	<c:forEach var="row" items="${rs.rows }">
	<tr>
		<td>${row.id }</td>
		<td>${row.pw }</td>
		<td>${row.name }</td>
		<td>${row.tel }</td>
	</tr>
	</c:forEach>
</table>
<c:redirect url="fmt_encode.jsp"/>
</body>
</html>