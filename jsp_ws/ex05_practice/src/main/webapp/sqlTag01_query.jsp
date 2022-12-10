<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
<table border="1">
	<tr>
		<c:forEach var="columnName" items="${rs.columnNames }">
			<th><c:out value="${columName }"/></th>
		</c:forEach>
	</tr>
	<c:forEach var="row" items="${rs.row }">
	<tr>
		<th>${row.id }</th>
		<th>${row.pw }</th>
		<th>${row.name }</th>
		<th>${row.tel }</th>
	</tr>
	</c:forEach>
</table>
</body>
</html>