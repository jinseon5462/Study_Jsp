<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
여기는 다음 페이지입니다.
<br><br>
request 데이터 : ${requestScope.data}<br> 
session 데이터 : ${sessionScope.data}<br>
application 데이터 : ${applicationScope.data }<br>
<hr>
<a href="nextPage.jsp">다음페이지</a>
</body>
</html>