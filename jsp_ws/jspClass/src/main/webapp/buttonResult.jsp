<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
button 결과 페이지
<%=request.getParameter("x") %><br>
${param.x } <!-- EL -->
</body>
</html>