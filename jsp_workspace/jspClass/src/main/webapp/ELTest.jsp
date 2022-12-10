<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>파라미터 받기</h3>
<hr>
<h4>표현식 방식</h4>
이름 : <%=name %><br>
나이 : <%=age %><br>
<hr>
<h4>EL 방식</h4><!-- 내장객체에 저장되어있는 데이터만 읽을 수 있다. -->
이름 : ${param.name }<br>
나이 : ${param.age }
<hr>
<br><br>
<h3>내장객체 데이터 받기</h3>
<hr>
request 영역 : ${requestScope.data }<br>
session 영역 : ${sessionScope.data }<br>
application 영역 : ${applicationScope.data }<br>
</body>
</html>