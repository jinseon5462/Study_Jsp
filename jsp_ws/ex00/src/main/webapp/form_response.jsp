<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//스크립틀릿 : jsp 파일에서 java 코드를 쓸 수 있는 영역
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String[] hobbies = request.getParameterValues("hobbies");
	String gender = request.getParameter("gender");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>폼 데이터 확인 페이지</h1>
<hr>
id는 <%= id %>입니다.<br>
pw는 <%= pw %>입니다.<br>
취미는

<%
	for(int i = 0; i < hobbies.length; i++){
		if(i == hobbies.length - 1){
%>
			<%=hobbies[i]%>
<%			
		}else{
%>
			<%=hobbies[i]%>, 
<%		
		}
	}
%>
<br>
성별은 <%= gender%>입니다.
</body>
</html>