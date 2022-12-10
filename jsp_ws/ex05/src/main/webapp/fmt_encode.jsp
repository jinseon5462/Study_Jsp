<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:requestEncoding value="UTF-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Parameter : ${param.name }
<hr>
<h3>데이터 전송</h3>
<form action="fmt_encode.jsp" method="post">
	<input type="text" name="name">
	<input type="submit" value="전송">
</form>
</body>
</html>