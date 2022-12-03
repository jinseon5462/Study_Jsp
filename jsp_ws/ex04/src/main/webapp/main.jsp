<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getParameter("name") %>님 반갑습니다.<br>
저희 홈페이지를 방문해주셔서 감사해요.
즐거운 시간 되세요<br>
<hr>
<h3>메인 페이지</h3>
<a href="sub.jsp">서브 페이지로 이동하기</a><br>
<%@ include file="footer.jsp" %>
</body>
</html>