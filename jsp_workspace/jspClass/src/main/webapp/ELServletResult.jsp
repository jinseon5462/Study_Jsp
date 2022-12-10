<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
request 데이터 : ${requestScope.data}<br> 
session 데이터 : ${sessionScope.data}<br>
application 데이터 : ${applicationScope.data }<br>
<hr>
<a href="nextPage.jsp">다음페이지</a>
</body>
</html>