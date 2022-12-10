<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:update dataSource="jdbc/maria">
	UPDATE member SET pw=? WHERE id=?
	<sql:param value="${'1111' }"/>
	<sql:param value="${'uuu' }"/>
</sql:update>

<sql:query var="rs" dataSource="jdbc/maria">
	SELECT * FROM member
</sql:query>
<h3>SQL Tag-update 연습</h3>
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
</body>
</html>