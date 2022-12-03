<%@page import="controller.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("utf-8");
	Member member = new Member();
	member.setId(request.getParameter("id"));
	member.setPw(request.getParameter("pw"));
	member.setGender(request.getParameter("gender"));
	member.setHobbies(request.getParameterValues("hobbies"));
	
	request.setAttribute("member", member);
	request.getRequestDispatcher("last_show.jsp").forward(request, response);
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