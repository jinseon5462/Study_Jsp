<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int global_cnt = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int local_cnt = 0;
%>

local_cnt : <%=++local_cnt %><br>
<br>
global_cnt : <%=++global_cnt %>
</body>
</html>