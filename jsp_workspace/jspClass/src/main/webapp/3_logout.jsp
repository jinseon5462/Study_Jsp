<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();	//세션 정보를 지우겠다.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("로그아웃 되었습니다.");	// 경고창을 띄워준다
	location.href="3_session_loginForm.jsp";	// 명시된 페이지로 이동시켜준다.
</script>
</body>
</html>