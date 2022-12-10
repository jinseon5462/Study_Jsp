<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "admin";
String pw = "1234";

String param_id = request.getParameter("userID");
String param_pw = request.getParameter("userPwd");
String param_name = request.getParameter("name");

if(param_id.equals(id) && param_pw.equals(pw)){
	session.setAttribute("loginUser", param_name);
	response.sendRedirect("3_main.jsp");
}else{
	response.sendRedirect("3_session_loginForm.jsp");
}
%>
