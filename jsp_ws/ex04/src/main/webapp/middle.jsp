<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String param = request.getParameter("data");
	String new_str = param + "end";
	request.setAttribute("newdata", new_str);	//첫번째는 문자열이어야 한다.
	request.getRequestDispatcher("end.jsp").forward(request, response);
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