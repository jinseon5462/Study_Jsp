<%@page import="controller.Member"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member = (Member) request.getAttribute("member");
	String[] hobbies = member.getHobbies();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>입력결과</h1>
<hr>
아이디 : <%=member.getId()%><br>
비밀번호 : <%=member.getPw()%><br>
성별 : <%=member.getGender()%><br>
취미 : 
<%
	for(int i = 0; i < hobbies.length; i++){
		if(i == hobbies.length - 1){
			out.print(hobbies[i]);
		}else{
			out.print(hobbies[i] + ", ");
		}
	}
%>
</body>
</html>