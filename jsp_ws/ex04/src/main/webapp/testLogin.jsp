
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String id = "admin";
	String pw = "1234";
	String name = "홍길동";
	request.setCharacterEncoding("utf-8");
	String param_id = request.getParameter("id");
	String param_pw = request.getParameter("pw");
	Map<String, String> map = new HashMap<>();
	
	
	if(id.equals(param_id) && pw.equals(param_pw)){
		//로그인 성공 페이지로 이동
		//response.sendRedirect("main.jsp?name=" + URLEncoder.encode(name, "utf-8"));
		request.setAttribute("name", name);
		request.getRequestDispatcher("main.jsp").forward(request, response);
	}else {
		//로그인 폼 페이지로 이동
		response.sendRedirect("loginForm.jsp");
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>