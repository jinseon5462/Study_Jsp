<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
if(id == null){
%>
	<a href="loginForm">로그인</a>
<%
}else if(id != null){
%>
	<%=id %>님, 반가워요<a href="LogoutServlet">로그아웃</a>
<%
}
%>
</body>
</html>