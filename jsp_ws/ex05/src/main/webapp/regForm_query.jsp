<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<sql:update var="result" dataSource="jdbc/maria" scope="session">
	INSERT INTO member (id, pw, name, tel) VALUES(?, ?, ?, ?)
	<sql:param value="${param.id }"/>
	<sql:param value="${param.pw }"/>
	<sql:param value="${param.name }"/>
	<sql:param value="${param.tel }"/>
</sql:update>
<c:redirect url="regMemberForm.jsp"/>
</body>
</html>