<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("data", "requestData");
	session.setAttribute("data", "sessionData");
	application.setAttribute("data", "applicationData");
	
	request.getRequestDispatcher("ELTest.jsp").forward(request, response);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>