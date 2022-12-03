<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String str = "안녕하세요.";
	public int abs(int n){
		if(n < 0){
			n = -n;
		}
		return n;
	}
%>
	
<%
	String str2 = "good bye";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSP 연습</h1>
<%
	int a = 5;
	int b = -5;
	out.print(str + "<br>");
	out.print("a의 절대값 : " + abs(a) + "<br>");
	out.print("b의 절대값 : " + abs(b) + "<br>");
%>
a의 절대값 : <%= abs(a) %><br>
b의 절대값 : <%= abs(b) %><br>

</body>
</html>