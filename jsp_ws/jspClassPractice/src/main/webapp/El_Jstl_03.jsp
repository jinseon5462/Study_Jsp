<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="xxxx"/><br>	<!-- c:out은 value값을 화면에 출력한다. -->
<%
	pageContext.setAttribute("age", 30);
%>
<c:set var="msg" value="hello" scope="session"/>	<!--  -->
\${msg } : ${msg }<br>

</body>
</html>